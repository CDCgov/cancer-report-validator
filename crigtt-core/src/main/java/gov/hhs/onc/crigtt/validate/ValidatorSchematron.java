//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

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
    XdmDocument transform(Source docSrc) throws Exception;

    XdmDocument transform(Source docSrc, @Nullable Map<Object, Object> contextData) throws Exception;

    Map<String, ValidatorAssertion> getActiveAssertions();

    Map<String, ValidatorPattern> getActivePatterns();

    Map<String, ValidatorPhase> getActivePhases();

    Map<String, ValidatorRule> getActiveRules();

    ValidatorSchema getActiveSchema();

    Map<String, VocabService> getActiveVocabServices();

    ExtensionFunctionDefinition[] getExtensionFunctions();

    void setExtensionFunctions(ExtensionFunctionDefinition... extFuncs);

    Map<String, String> getNamespaces();

    Map<String, ?> getParameters();

    void setParameters(Map<String, ?> params);

    Map<String, String> getPatternPhases();

    String getQueryBinding();

    void setQueryBinding(String queryBinding);

    XdmDocument[] getReferencedDocuments();

    void setReferencedDocuments(XdmDocument... referencedDocs);

    String getSchemaVersion();

    void setSchemaVersion(String schemaVersion);

    Source getSource();

    void setSource(Source src);

    VocabService[] getVocabServices();

    void setVocabServices(VocabService... vocabServices);

    CrigttXsltExecutable[] getXsltExecutables();

    void setXsltExecutables(CrigttXsltExecutable... xsltExecs);
}
