//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package gov.hhs.onc.crigtt.validate.vocab;

import java.util.Map;
import java.util.Set;
import org.sitenv.vocabularies.loader.VocabularyLoader;
import org.sitenv.vocabularies.model.CodeModelDefinition;
import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.model.ValueSetModelDefinition;
import org.springframework.beans.factory.DisposableBean;

public interface DynamicVocabService extends DisposableBean, VocabService {
    Map<String, VocabularyLoader<?>> getCodeLoaders();

    void setCodeLoaders(Map<String, VocabularyLoader<?>> codeLoaders);

    Set<CodeModelDefinition<?>> getCodeModelDefinitions();

    void setCodeModelDefinitions(Set<CodeModelDefinition<?>> codeModelDefs);

    Map<String, VocabularyLoader<? extends ValueSetCodeModel>> getValueSetCodeLoaders();

    void setValueSetCodeLoaders(Map<String, VocabularyLoader<? extends ValueSetCodeModel>> valueSetCodeLoaders);

    Set<ValueSetModelDefinition<?>> getValueSetModelDefinitions();

    void setValueSetModelDefinitions(Set<ValueSetModelDefinition<?>> valueSetModelDefs);
}
