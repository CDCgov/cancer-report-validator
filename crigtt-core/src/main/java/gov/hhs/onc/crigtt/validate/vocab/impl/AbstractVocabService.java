package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import gov.hhs.onc.crigtt.beans.IdentifiedBean;
import gov.hhs.onc.crigtt.transform.impl.CrigttXpathCompiler;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertions;
import gov.hhs.onc.crigtt.validate.vocab.VocabService;
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import javax.annotation.Resource;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.Source;

public abstract class AbstractVocabService implements VocabService {
    @Resource(name = "xpathCompilerCrigtt")
    protected CrigttXpathCompiler xpathCompiler;

    @Resource(name = "jaxbMarshallerValidate")
    protected CrigttJaxbMarshaller validateJaxbMarshaller;

    protected Source assertionSrc;
    protected Map<String, VocabAssertion> assertions;
    protected Map<String, String> initialTestExprs;

    @Override
    public List<Code> findCodesByCodeSystem(String codeSystemId, String codeId) {
        return this.findCodesByCodeSystem(false, codeSystemId, codeId);
    }

    @Override
    public List<Code> findNamedCodesByCodeSystem(String codeSystemId, String codeName) {
        return this.findNamedCodesByCodeSystem(false, codeSystemId, codeName);
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public void afterPropertiesSet() throws Exception {
        this.assertions =
            CrigttStreamUtils.toMap(IdentifiedBean::getId, Function.<VocabAssertion> identity(), LinkedHashMap::new,
                ((JAXBElement<VocabAssertions>) this.validateJaxbMarshaller.unmarshal(this.assertionSrc, JAXBElement.class)).getValue().getAssertions()
                    .stream());

        int numAssertions = this.assertions.size();

        this.initialTestExprs = new HashMap<>(numAssertions);
    }

    @Override
    public Map<String, VocabAssertion> getAssertions() {
        return this.assertions;
    }

    @Override
    public Source getAssertionSource() {
        return this.assertionSrc;
    }

    @Override
    public void setAssertionSource(Source assertionSrc) {
        this.assertionSrc = assertionSrc;
    }

    @Override
    public Map<String, String> getInitialTestExpressions() {
        return this.initialTestExprs;
    }
}
