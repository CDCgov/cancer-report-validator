package gov.hhs.onc.crigtt.validate.vocab;

import java.util.Map;
import java.util.Set;
import org.sitenv.vocabularies.loader.VocabularyLoader;
import org.sitenv.vocabularies.model.CodeModelDefinition;
import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.model.ValueSetModelDefinition;
import org.springframework.beans.factory.DisposableBean;

public interface DynamicVocabService extends DisposableBean, VocabService {
    public Map<String, VocabularyLoader<?>> getCodeLoaders();

    public void setCodeLoaders(Map<String, VocabularyLoader<?>> codeLoaders);

    public Set<CodeModelDefinition<?>> getCodeModelDefinitions();

    public void setCodeModelDefinitions(Set<CodeModelDefinition<?>> codeModelDefs);

    public Map<String, VocabularyLoader<? extends ValueSetCodeModel>> getValueSetCodeLoaders();

    public void setValueSetCodeLoaders(Map<String, VocabularyLoader<? extends ValueSetCodeModel>> valueSetCodeLoaders);

    public Set<ValueSetModelDefinition<?>> getValueSetModelDefinitions();

    public void setValueSetModelDefinitions(Set<ValueSetModelDefinition<?>> valueSetModelDefs);
}
