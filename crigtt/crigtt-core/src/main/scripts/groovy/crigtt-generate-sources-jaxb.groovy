import ch.qos.logback.classic.Level
import ch.qos.logback.classic.Logger
import ch.qos.logback.classic.LoggerContext
import ch.qos.logback.classic.spi.ILoggingEvent
import ch.qos.logback.core.filter.Filter
import ch.qos.logback.core.spi.FilterReply
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonTypeName
import com.github.sebhoss.warnings.CompilerWarnings
import com.sun.codemodel.ClassType
import com.sun.codemodel.JAnnotationUse
import com.sun.codemodel.JCodeModel
import com.sun.codemodel.JDefinedClass
import com.sun.codemodel.JExpr
import com.sun.codemodel.JFieldVar
import com.sun.codemodel.JMethod
import com.sun.codemodel.JMod
import com.sun.tools.xjc.AbortException
import com.sun.tools.xjc.ErrorReceiver
import com.sun.tools.xjc.Language
import com.sun.tools.xjc.ModelLoader
import com.sun.tools.xjc.Options
import com.sun.tools.xjc.addon.xew.XmlElementWrapperPlugin
import com.sun.tools.xjc.generator.bean.DualObjectFactoryGenerator
import com.sun.tools.xjc.model.CClassInfo
import com.sun.tools.xjc.model.CPropertyInfo
import java.lang.reflect.Method
import java.util.regex.Pattern
import java.util.stream.Collectors
import java.util.stream.Stream
import javax.annotation.Nullable
import javax.xml.bind.annotation.XmlNs
import javax.xml.bind.annotation.XmlRootElement
import javax.xml.bind.annotation.XmlSchema
import org.apache.commons.lang3.ArrayUtils
import org.apache.commons.lang3.BooleanUtils
import org.apache.commons.lang3.ClassUtils
import org.apache.commons.lang3.ObjectUtils
import org.apache.commons.lang3.StringUtils
import org.apache.commons.logging.LogFactory
import org.apache.maven.plugin.MojoExecutionException
import org.apache.maven.plugin.logging.Log
import org.slf4j.impl.StaticLoggerBinder
import org.springframework.context.ConfigurableApplicationContext
import org.xml.sax.SAXParseException

def class MavenErrorReceiver extends ErrorReceiver {
    private Log log
    private String msg

    MavenErrorReceiver(Log log, String msg) {
        this.log = log
        this.msg = msg
    }

    @Override
    void fatalError(SAXParseException exception) throws AbortException {
        this.log.error(this.msg, exception)
        
        throw new AbortException()
    }
    
    @Override
    void error(SAXParseException exception) throws AbortException {
        this.log.error(this.msg, exception)
        
        throw new AbortException()
    }

    @Override
    void warning(SAXParseException exception) throws AbortException {
        this.log.warn(this.msg, exception)
    }

    @Override
    void info(SAXParseException exception) {
        this.log.info(this.msg, exception)
    }
}

def String extractClassSimpleName(String className) {
    return className.substring((className.lastIndexOf(ClassUtils.PACKAGE_SEPARATOR) + 1), className.length())
}

def String extractPackageName(String className) {
    return className.substring(0, className.lastIndexOf(ClassUtils.PACKAGE_SEPARATOR))
}

def Map<String, String> tokenizeMap(@Nullable String str) {
    def tokens = this.tokenize(str)
    def tokenMap = new LinkedHashMap<String, String>(tokens.length)
    def tokenParts
    
    Stream.of(tokens).each{ tokenMap.put((tokenParts = StringUtils.split(it, "=", 2))[0], tokenParts[1]) }
    
    return tokenMap
}

def String[] tokenize(@Nullable String str) {
    return this.tokenize(str, null);
}

def String[] tokenize(@Nullable String str, @Nullable String defaultStr) {
    return ObjectUtils.defaultIfNull(org.springframework.util.StringUtils.tokenizeToStringArray(ObjectUtils.defaultIfNull(str, defaultStr),
        ConfigurableApplicationContext.CONFIG_LOCATION_DELIMITERS), ArrayUtils.EMPTY_STRING_ARRAY);
}

def final BASE_ARGS = [
    "-mark-generated",
    "-Xdefault-value",
    "-Xsetters",
    "-Xsetters-mode=direct",
    "-Xxew",
    "-Xxew:instantiate lazy",
    "-Xannotate",
    "-Xvalue-constructor"
] as String[]

def final JAVA_SRC_FILE_EXT = ".java"

def final IMPL_PKG_NAME_SUFFIX = ".impl"

def final BASE_PKG_NAME = "gov.hhs.onc.crigtt"
def final BEANS_PKG_NAME = BASE_PKG_NAME + ".beans"

def final ABSTRACT_CLASS_NAME_PREFIX = "Abstract"

def final IMPL_CLASS_NAME_SUFFIX = "Impl"

def final JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME = "JAXBContextFactory"

def final IDENTIFIED_BEAN_CLASS_NAME = BEANS_PKG_NAME + ClassUtils.PACKAGE_SEPARATOR + "IdentifiedBean"
def final NAMED_BEAN_CLASS_NAME = BEANS_PKG_NAME + ClassUtils.PACKAGE_SEPARATOR + "NamedBean"
def final DTO_BEAN_CLASS_NAME = BEANS_PKG_NAME + ClassUtils.PACKAGE_SEPARATOR + "DtoBean"

def final VALUE_FIELD_NAME = "value"

def final GETTER_METHOD_NAME_PREFIX = "get"
def final IS_METHOD_NAME_PREFIX = "is"
def final SETTER_METHOD_NAME_PREFIX = "set"

def final ID_PROP_PUBLIC_NAME = "Id"
def final NAME_PROP_PUBLIC_NAME = "Name"

def final SERIAL_VERSION_UID_FIELD_NAME = "serialVersionUID"

def rootLogger = ((LoggerContext) StaticLoggerBinder.singleton.loggerFactory).getLogger(Logger.ROOT_LOGGER_NAME)
rootLogger.level = Level.INFO

rootLogger.iteratorForAppenders().each {
    it.addFilter(new Filter<ILoggingEvent>() {
        @Override
        def FilterReply decide(ILoggingEvent event) {
            return (event.level.isGreaterOrEqual(Level.WARN) ? FilterReply.NEUTRAL : FilterReply.DENY)
        }
    })
}

System.setProperty("javax.xml.accessExternalSchema", "all")

def bindingVars = this.binding.variables
def jaxbSrcDir = new File(project.properties["project.build.jaxbSourceDirectory"])

def outDir = new File(outDir)
outDir.mkdirs()
project.addCompileSourceRoot(outDir.path)

def opts = new Options()
opts.automaticNameConflictResolution = true
opts.compatibilityMode = Options.EXTENSION
opts.contentForWildcard = true
opts.encoding = project.properties["project.build.sourceEncoding"]
opts.noFileHeader = true
opts.schemaLanguage = Language.XMLSCHEMA
opts.targetDir = outDir
opts.verbose = BooleanUtils.toBoolean(((String) bindingVars["verbose"]))

(ant.fileset(dir: jaxbSrcDir) {
    this.tokenize(bindingVars["bindingIncludes"]).each{
        ant.include(name: it)
    }
    
    this.tokenize(bindingVars["bindingExcludes"]).each{
        ant.exclude(name: it)
    }
}).each{
    opts.addBindFile(it.file)
}

(ant.fileset(dir: new File(project.properties["project.build.schemaSourceDirectory"])) {
    this.tokenize(bindingVars["schemaIncludes"]).each{
        ant.include(name: it)
    }
    
    this.tokenize(bindingVars["schemaExcludes"]).each{
        ant.exclude(name: it)
    }
}).each{
    opts.addGrammar(it.file)
}

def allPlugins = opts.getAllPlugins()

for (def a = 0; a < allPlugins.size(); a++) {
    if (allPlugins[a].getOptionName() == "Xxew") {
        allPlugins.set(a, new XmlElementWrapperPlugin() {
            {
                this.logger = LogFactory.getLog(this.getClass())
            }
        })
        
        break
    }
}

def args = ((String[]) ArrayUtils.addAll(BASE_ARGS, this.tokenize(bindingVars["args"])))
def argStr = StringUtils.join(args, " ")

try {
    opts.parseArguments(args)
} catch (e) {
    throw new MojoExecutionException("Unable to parse arguments: ${argStr}", e)
}

log.info("Parsed arguments: ${argStr}")

def codeModel = new JCodeModel()
def model = ModelLoader.load(opts, codeModel, new MavenErrorReceiver(log, "Unable to parse XML schema(s)."));
def beans = model.beans()
def numBeans = beans.size()

def outline

try {
    outline = model.generateCode(opts, new MavenErrorReceiver(log, "Unable to generate code for XML schema(s)."))
} catch (e) {
    throw new MojoExecutionException("Unable to generate code outline for ${numBeans} class(es).", e)
}

log.info("Generated code outline for ${numBeans} class(es).")

def xmlNsPrefixes = this.tokenizeMap(bindingVars["xmlNsPrefixes"])
def xmlNsPrefixStaticRefs = xmlNsPrefixes.collectEntries(new LinkedHashMap<String, String>(xmlNsPrefixes.size()),
    { [ it.key, codeModel.directClass(this.extractPackageName(it.value)).staticRef(this.extractClassSimpleName(it.value)) ] })
def xmlNsUris = this.tokenizeMap(bindingVars["xmlNsUris"])
def xmlNsUriStaticRefs = xmlNsUris.collectEntries(new LinkedHashMap<String, String>(xmlNsUris.size()),
    { [ it.key, codeModel.directClass(this.extractPackageName(it.value)).staticRef(this.extractClassSimpleName(it.value)) ] })
def pkgNames = this.tokenizeMap(bindingVars["pkgNames"])
def implPkgNames = pkgNames.collectEntries{ [ it.key, (it.value + IMPL_PKG_NAME_SUFFIX) ] }

implPkgNames.each{
    def implPkg = codeModel._package(it.value)
    def xmlSchemaAnno = implPkg.annotations().find{ it.annotationClass.fullName() == XmlSchema.class.name }
    
    if (xmlSchemaAnno == null) {
        xmlSchemaAnno = implPkg.annotate(XmlSchema.class)
        xmlSchemaAnno.param("elementFormDefault", codeModel.directClass("javax.xml.bind.annotation.XmlNsForm").staticRef("QUALIFIED"))
    }
    
    xmlSchemaAnno.param("namespace", xmlNsUriStaticRefs[it.key]).paramArray("xmlns").annotate(XmlNs.class)
        .param("prefix", xmlNsPrefixStaticRefs[it.key]).param("namespaceURI", xmlNsUriStaticRefs[it.key])
}

def compilerWarningsClassName = CompilerWarnings.class.name
def compilerWarningsClassModel = codeModel.directClass(compilerWarningsClassName)
def rawTypesFieldName = "RAWTYPES"
def uncheckedFieldName = "UNCHECKED"
def rawTypesStaticRef = compilerWarningsClassModel.staticRef(rawTypesFieldName)
def uncheckedStaticRef = compilerWarningsClassModel.staticRef(uncheckedFieldName)
def identifiedBeanClassModel = codeModel.directClass(IDENTIFIED_BEAN_CLASS_NAME)
def namedBeanClassModel = codeModel.directClass(NAMED_BEAN_CLASS_NAME)
def dtoBeanClassModel = codeModel.directClass(DTO_BEAN_CLASS_NAME)
def abstractImplClassNames = new HashSet<String>()
def objFactoryGen
def CClassInfo classModel
def JDefinedClass classRef
def JDefinedClass implClass
def JAnnotationUse implAnnoModel
def Map<String, JFieldVar> fields
def Map<String, JMethod> classMethods
def Map<String, JMethod> implClassMethods
def Map<String, CPropertyInfo> props
def publicPropName
def propGetterName
def propIsGetter
def propGetter
def implPropGetter
def propSetterName

def Method annoModelAddValueMethod = JAnnotationUse.class.declaredMethods.find{ it.name == "addValue" }
annoModelAddValueMethod.accessible = true

outline.allPackageContexts.each{
    [
        (objFactoryGen = ((DualObjectFactoryGenerator) it.objectFactoryGenerator())).publicOFG,
        objFactoryGen.privateOFG
    ].each{ it.objectFactory.annotate(SuppressWarnings.class).paramArray(VALUE_FIELD_NAME).param(rawTypesStaticRef).param(uncheckedStaticRef) }
    
    it.classes?.each{
        if (((classRef = it.ref) == null) || ((implClass = it.implClass) == null) || ((classModel = it.target) == null)) {
            return;
        }
        
        if (classRef.classType == ClassType.INTERFACE) {
            classRef._implements(dtoBeanClassModel)
        }
        
        classRef.annotations().findAll{ (it.annotationClass.fullName() == JsonTypeName.class.name) ||
            (it.annotationClass.fullName() == XmlRootElement.class.name) }?.each{
            implAnnoModel = implClass.annotate(it.annotationClass)
            
            it.annotationMembers.each{
                annoModelAddValueMethod.invoke(implAnnoModel, it.key, it.value)
            }
            
            classRef.removeAnnotation(it)
        }
        
        if (implClass.abstract) {
            abstractImplClassNames.add(implClass.name())
        }
        
        implClass.field((JMod.PRIVATE | JMod.FINAL | JMod.STATIC), codeModel.LONG, SERIAL_VERSION_UID_FIELD_NAME, JExpr.lit(0L))
        
        fields = implClass.fields()
        classMethods = classRef.methods().stream().collect(Collectors.toMap({ it.name() }, { it }))
        implClassMethods = implClass.methods().stream().collect(Collectors.toMap({ it.name() }, { it }))
        props = classModel.properties.stream().collect(Collectors.toMap({ it.getName(true) }, { it }))
        
        if (props.containsKey(ID_PROP_PUBLIC_NAME)) {
            classRef._implements((props.containsKey(NAME_PROP_PUBLIC_NAME) ? namedBeanClassModel : identifiedBeanClassModel))
        }
        
        props.values().each {
            if (implClassMethods.containsKey((propGetterName = (GETTER_METHOD_NAME_PREFIX + (publicPropName = it.getName(true))))) ||
                (propIsGetter = implClassMethods.containsKey((propGetterName = (IS_METHOD_NAME_PREFIX + publicPropName))))) {
                propGetter = classMethods[propGetterName]
                
                (implPropGetter = implClassMethods[propGetterName]).annotations().find{ it.annotationClass.fullName() == JsonProperty.class.name }.each{
                    implPropGetter.removeAnnotation(it)
                    
                    propGetter.annotate(JsonProperty.class)
                }
                
                if (propIsGetter) {
                    [ propGetter, implPropGetter ].each{ it.name((GETTER_METHOD_NAME_PREFIX + publicPropName)) }
                }
            }
            
            if (it.collection && !classMethods.containsKey((propSetterName = (SETTER_METHOD_NAME_PREFIX + publicPropName)))) {
                classRef.method(JMod.NONE, codeModel.VOID, propSetterName).param(classMethods[propGetterName].type(), "values")
            }
        }
    }
}

try {
    codeModel.build(opts.createCodeWriter())
} catch (e) {
    throw new MojoExecutionException("Unable to build code model for ${numBeans} class(es).", e)
}

log.info("Built code model for ${numBeans} class(es).")

def srcFile
def srcFileBaseName
def srcFileContent

ant.fileset(dir: outDir, includes: "**/*${JAVA_SRC_FILE_EXT}").each{
    srcFileContent = (srcFile = it.file).text
    
    abstractImplClassNames.each {
        srcFileContent = srcFileContent.replaceAll(Pattern.compile("(\\s+)(${it})(\\s+|[\\.\\(])"), {
            it[1] + ABSTRACT_CLASS_NAME_PREFIX + StringUtils.removeEnd(it[2], IMPL_CLASS_NAME_SUFFIX) + it[3]
        })
    }
    
    if ((srcFileBaseName = StringUtils.removeEnd(srcFile.name, JAVA_SRC_FILE_EXT)) == JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME) {
        srcFileContent = srcFileContent.replaceFirst(Pattern.compile("(\\npublic\\s+class\\s+${JAXB_CONTEXT_FACTORY_SIMPLE_CLASS_NAME}\\s+)"),
        "\n@${SuppressWarnings.class.simpleName}({ ${compilerWarningsClassName}.${rawTypesFieldName}, ${compilerWarningsClassName}.${uncheckedFieldName} })\$1")
    }
    
    srcFile.write(srcFileContent)
    
    if (abstractImplClassNames.contains(srcFileBaseName)) {
        srcFile.renameTo(new File(srcFile.parentFile,
            (ABSTRACT_CLASS_NAME_PREFIX + StringUtils.removeEnd(srcFileBaseName, IMPL_CLASS_NAME_SUFFIX) + JAVA_SRC_FILE_EXT)))
    }
}
