package gov.hhs.onc.crigtt.validate;

import gov.hhs.onc.crigtt.beans.NamedBean;
import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.xml.impl.XdmDocument;
import java.util.Map;
import javax.annotation.Nullable;
import javax.xml.transform.Source;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import org.springframework.beans.factory.InitializingBean;

public interface ValidatorSchematron extends NamedBean, InitializingBean {
    public XdmDocument transform(Source docSrc) throws Exception;

    public XdmDocument transform(Source docSrc, @Nullable Map<Object, Object> contextData) throws Exception;

    public Map<String, ValidatorAssertion> getActiveAssertions();

    public Map<String, ValidatorPattern> getActivePatterns();

    public Map<String, ValidatorPhase> getActivePhases();

    public Map<String, ValidatorRule> getActiveRules();

    public ValidatorSchema getActiveSchema();

    public Map<String, VocabService> getActiveVocabServices();

    public ExtensionFunctionDefinition[] getExtensionFunctions();

    public void setExtensionFunctions(ExtensionFunctionDefinition ... extFuncs);

    public Map<String, String> getNamespaces();

    public Map<String, ?> getParameters();

    public void setParameters(Map<String, ?> params);

    public Map<String, String> getPatternPhases();

    public String getQueryBinding();

    public void setQueryBinding(String queryBinding);

    public XdmDocument[] getReferencedDocuments();

    public void setReferencedDocuments(XdmDocument ... referencedDocs);

    public String getSchemaVersion();

    public void setSchemaVersion(String schemaVersion);

    public Source getSource();

    public void setSource(Source src);

    public VocabService[] getVocabServices();

    public void setVocabServices(VocabService ... vocabServices);

    public CrigttXsltExecutable[] getXsltExecutables();

    public void setXsltExecutables(CrigttXsltExecutable ... xsltExecs);
}
