//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.vocab;

import java.util.List;
import java.util.Map;
import javax.xml.transform.Source;
import org.springframework.beans.factory.InitializingBean;

public interface VocabService extends InitializingBean {
    List<Code> findCodesByCodeSystem(String codeSystemId, String codeId);

    List<Code> findCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeId);

    List<Code> findCodesByValueSet(String valueSetId, String codeId);

    List<Code> findCodesByValueSet(String valueSetId, String codeSystemId, String codeId);

    List<Code> findNamedCodesByCodeSystem(String codeSystemId, String codeName);

    List<Code> findNamedCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeName);

    List<Code> findNamedCodesByValueSet(String valueSetId, String codeName);

    List<Code> findNamedCodesByValueSet(String valueSetId, String codeSystemId, String codeName);

    String processTestExpression(String assertionId, String testExpr);

    Map<String, VocabAssertion> getAssertions();

    Source getAssertionSource();

    void setAssertionSource(Source assertionSrc);

    Map<String, String> getInitialTestExpressions();
}
