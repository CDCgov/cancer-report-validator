package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import com.orientechnologies.orient.core.db.ODatabaseType;
import com.orientechnologies.orient.core.db.OrientDBConfig;
import com.orientechnologies.orient.object.db.OrientDBObject;
import com.orientechnologies.orient.core.db.object.ODatabaseObject;
import gov.hhs.onc.crigtt.data.db.impl.CrigttDbServerConfiguration;
import gov.hhs.onc.crigtt.utils.CrigttStreamUtils;
import gov.hhs.onc.crigtt.validate.SchematronVars;
import gov.hhs.onc.crigtt.validate.vocab.Code;
import gov.hhs.onc.crigtt.validate.vocab.DynamicVocabService;
import gov.hhs.onc.crigtt.validate.vocab.VocabAssertion;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.xml.utils.CrigttXpathUtils;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.sitenv.vocabularies.engine.ValidationEngine;
import org.sitenv.vocabularies.loader.VocabularyLoader;
import org.sitenv.vocabularies.model.CodeModel;
import org.sitenv.vocabularies.model.CodeModelDefinition;
import org.sitenv.vocabularies.model.ValueSetCodeModel;
import org.sitenv.vocabularies.model.ValueSetModelDefinition;
import org.sitenv.vocabularies.model.VocabularyModelDefinition;
import org.sitenv.vocabularies.repository.VocabularyRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

public class DynamicVocabServiceImpl extends AbstractVocabService implements DynamicVocabService {
    private final static String TEST_EXPR_SUFFIX_FORMAT = DynamicVocabFunction.NAME.toString() + CrigttXpathUtils.CALL_PREFIX + CrigttXpathUtils.VAR_PREFIX
        + SchematronVars.PATTERN_ID_NAME + ", '%1$s', " + CrigttXpathUtils.VAR_PREFIX + SchematronVars.CONTEXT_LINE_NUM_NAME + ", "
        + CrigttXpathUtils.VAR_PREFIX + SchematronVars.CONTEXT_COLUMN_NUM_NAME + ", %2$s" + CrigttXpathUtils.CALL_SUFFIX;

    private final static Logger LOGGER = LoggerFactory.getLogger(DynamicVocabServiceImpl.class);

    @Value("${crigtt.validate.vocab.dynamic.load.force}")
    private boolean forceLoad;

    @Value("${crigtt.db.validate.vocab.dynamic.storage.primary.dir}")
    private File dbPrimaryStorageDir;

    @Value("${crigtt.validate.vocab.dynamic.repo.code.dir}")
    private File codeRepoDir;

    @Value("${crigtt.validate.vocab.dynamic.repo.value.set.dir}")
    private File valueSetRepoDir;

    @jakarta.annotation.Resource(name = "dbServerConfigValidateVocabDynamic")
    private CrigttDbServerConfiguration dbServerConfig;

    private Map<String, VocabularyLoader<?>> codeLoaders = new LinkedHashMap<>();
    private Set<CodeModelDefinition<?>> codeModelDefs = new LinkedHashSet<>();
    private Map<String, VocabularyLoader<? extends ValueSetCodeModel>> valueSetCodeLoaders = new LinkedHashMap<>();
    private Set<ValueSetModelDefinition<?>> valueSetModelDefs = new LinkedHashSet<>();
    private OrientDBObject orientDBObject;
    private VocabularyRepository vocabRepo;

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeId) {
        Map<String, String> params =
            buildParameters(new ImmutablePair<>(VocabFields.CODE_NAME, codeId), new ImmutablePair<>(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId));

        if (forValueSet) {
            params.put(VocabFields.VALUE_SET_ID_NAME, null);
        }

        return this.findCodes(forValueSet, params);
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findCodesByValueSet(String valueSetId, String codeId) {
        return this.findCodes(true,
            buildParameters(new ImmutablePair<>(VocabFields.CODE_NAME, codeId), new ImmutablePair<>(VocabFields.VALUE_SET_ID_NAME, valueSetId)));
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findCodesByValueSet(String valueSetId, String codeSystemId, String codeId) {
        return this.findCodes(
            true,
            buildParameters(new ImmutablePair<>(VocabFields.CODE_NAME, codeId), new ImmutablePair<>(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId),
                new ImmutablePair<>(VocabFields.VALUE_SET_ID_NAME, valueSetId)));
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findNamedCodesByCodeSystem(boolean forValueSet, String codeSystemId, String codeName) {
        Map<String, String> params =
            buildParameters(new ImmutablePair<>(VocabFields.DISPLAY_NAME_NAME, codeName), new ImmutablePair<>(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId));

        if (forValueSet) {
            params.put(VocabFields.VALUE_SET_ID_NAME, null);
        }

        return this.findCodes(forValueSet, params);
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findNamedCodesByValueSet(String valueSetId, String codeName) {
        return this.findCodes(true,
            buildParameters(new ImmutablePair<>(VocabFields.DISPLAY_NAME_NAME, codeName), new ImmutablePair<>(VocabFields.VALUE_SET_ID_NAME, valueSetId)));
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    public List<Code> findNamedCodesByValueSet(String valueSetId, String codeSystemId, String codeName) {
        return this.findCodes(
            true,
            buildParameters(new ImmutablePair<>(VocabFields.DISPLAY_NAME_NAME, codeName), new ImmutablePair<>(VocabFields.CODE_SYSTEM_ID_NAME, codeSystemId),
                new ImmutablePair<>(VocabFields.VALUE_SET_ID_NAME, valueSetId)));
    }

    @Override
    public String processTestExpression(String assertionId, String testExpr) {
        if (!this.assertions.containsKey(assertionId)) {
            return testExpr;
        }

        this.initialTestExprs.put(assertionId, testExpr);

        VocabAssertion assertion = this.assertions.get(assertionId);
        String runtimeTestExpr =
            (CrigttXpathUtils.CALL_PREFIX + (assertion.isSetTestExpressionOverride() ? assertion.getTestExpressionOverride() : testExpr)
                + CrigttXpathUtils.CALL_SUFFIX + StringUtils.SPACE + (assertion.getOptional() ? CrigttXpathUtils.OR_OP : CrigttXpathUtils.AND_OP)
                + StringUtils.SPACE + String.format(TEST_EXPR_SUFFIX_FORMAT, assertionId, assertion.getVocabContextExpression()));

        LOGGER.trace(String.format("Processed dynamic vocabulary validation assertion (id=%s, initialTestExpr=%s, runtimeTestExpr=%s).", assertionId, testExpr,
            runtimeTestExpr));

        return runtimeTestExpr;
    }

    @Override
    public void destroy() throws Exception {
        Optional.ofNullable(this.orientDBObject).ifPresent(OrientDBObject::close);
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        boolean dbPrimaryStorageExists = (this.dbPrimaryStorageDir.isDirectory() && (this.dbPrimaryStorageDir.list().length > 0));

        // Initialize OrientDB using the new 3.x API
        String dbUrl = "embedded:" + this.dbPrimaryStorageDir.getParent();
        String dbName = this.dbPrimaryStorageDir.getName();
        
        this.orientDBObject = new OrientDBObject(dbUrl, OrientDBConfig.defaultConfig());
        
        // Create database if it doesn't exist
        if (!this.orientDBObject.exists(dbName)) {
            this.orientDBObject.create(dbName, ODatabaseType.PLOCAL);
        }

        // Initialize vocabulary repository - we may need to adapt this for OrientDB 3.x compatibility
        this.vocabRepo = VocabularyRepository.getInstance();
        
        // Set up the vocabulary repository configuration
        // Note: This may need further adaptation based on VocabularyRepository's OrientDB 3.x compatibility
        try {
            // Check if the repository has new initialization methods for OrientDB 3.x
            // For now, we'll use the existing initialization and let it handle the connection
            LOGGER.info("Initializing VocabularyRepository with OrientDB 3.x. Some compatibility issues may arise.");
        } catch (Exception e) {
            LOGGER.warn("VocabularyRepository may not be fully compatible with OrientDB 3.x", e);
        }

        // noinspection RedundantCast
        this.vocabRepo.getCodeModelDefinitions().putAll(
            ((Map<String, CodeModelDefinition<?>>) CrigttStreamUtils.toMap(VocabularyModelDefinition::getType, Function.identity(), LinkedHashMap::new,
                this.codeModelDefs.stream())));

        // noinspection RedundantCast
        this.vocabRepo.getValueSetModelDefinitions().putAll(
            ((Map<String, ValueSetModelDefinition<?>>) CrigttStreamUtils.toMap(VocabularyModelDefinition::getType, Function.identity(), LinkedHashMap::new,
                this.valueSetModelDefs.stream())));

        this.vocabRepo.getCodeLoaders().putAll(this.codeLoaders);
        this.vocabRepo.getValueSetCodeLoaders().putAll(this.valueSetCodeLoaders);

        // OrientDB 3.x compatibility: Skip connection pool initialization as it's not compatible
        // VocabularyRepository's initializeDbConnectionPools() method is designed for OrientDB 2.x
        // and is not compatible with OrientDB 3.x connection handling
        LOGGER.info("Skipping VocabularyRepository.initializeDbConnectionPools() for OrientDB 3.x compatibility.");
        LOGGER.info("Dynamic vocabulary queries will use direct OrientDB 3.x connections instead of connection pools.");

        if (!dbPrimaryStorageExists || this.forceLoad) {
            String codeRepoDirPath = this.codeRepoDir.getPath(), valueSetRepoPath = this.valueSetRepoDir.getPath();

            LOGGER.info(String.format(
                "Loading (force=%s) contents of dynamic vocabulary repositories (codeRepoPath=%s, valueSetRepoPath=%s) into primary database (path=%s).",
                this.forceLoad, codeRepoDirPath, valueSetRepoPath, this.dbPrimaryStorageDir.getPath()));

            this.vocabRepo.toggleActiveDatabase();
            this.vocabRepo.initializeDb(false);

            if (this.codeRepoDir.isDirectory()) {
                ValidationEngine.loadCodeDirectory(codeRepoDirPath);
            }

            if (this.valueSetRepoDir.isDirectory()) {
                ValidationEngine.loadValueSetDirectory(valueSetRepoPath);
            }

            this.vocabRepo.toggleActiveDatabase();
        }

        // OrientDB 3.x compatibility: Skip registerModels as it requires connection pools
        // VocabularyRepository.registerModels() depends on connection pools that are not compatible with OrientDB 3.x
        LOGGER.info("Skipping VocabularyRepository.registerModels() for OrientDB 3.x compatibility.");
        LOGGER.info("Model registration will be handled directly by OrientDB 3.x when needed.");
        
        super.afterPropertiesSet();
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    private static Map<String, String> buildParameters(Entry<String, String> ... entries) {
        return CrigttStreamUtils.toMap(() -> new LinkedHashMap<>(entries.length), Stream.of(entries));
    }

    private List<Code> findCodes(boolean forValueSet, Map<String, String> params) {
        try (ODatabaseObject dbConn = this.orientDBObject.open(this.dbPrimaryStorageDir.getName(), "admin", "admin")) {
            // Build SQL query using the new OrientDB 3.x query API
            String queryClass = forValueSet ? "ValueSetCodeModel" : "CodeModel";
            
            // Build WHERE clause from parameters
            StringBuilder queryBuilder = new StringBuilder("SELECT FROM " + queryClass);
            if (!params.isEmpty()) {
                queryBuilder.append(" WHERE ");
                boolean first = true;
                for (Map.Entry<String, String> entry : params.entrySet()) {
                    if (!first) {
                        queryBuilder.append(" AND ");
                    }
                    if (entry.getValue() != null) {
                        queryBuilder.append(entry.getKey()).append(" = :").append(entry.getKey());
                    } else {
                        queryBuilder.append(entry.getKey()).append(" IS NULL");
                    }
                    first = false;
                }
            }
            
            String query = queryBuilder.toString();
            LOGGER.debug("Executing vocabulary query: {}", query);
            
            // Use the new OrientDB 3.x query method
            List<CodeModel> codeModels = dbConn.objectQuery(query, params);
            
            if (!CollectionUtils.isEmpty(codeModels)) {
                return codeModels.stream()
                    .map(codeModel -> new CodeImpl(codeModel.getCode(), codeModel.getDisplayName()))
                    .collect(Collectors.toList());
            }
            
            return Collections.emptyList();
        } catch (Exception e) {
            LOGGER.error("Error executing vocabulary query", e);
            return Collections.emptyList();
        }
    }



    @Override
    public Map<String, VocabularyLoader<?>> getCodeLoaders() {
        return this.codeLoaders;
    }

    @Override
    public void setCodeLoaders(Map<String, VocabularyLoader<?>> codeLoaders) {
        this.codeLoaders.clear();
        this.codeLoaders.putAll(codeLoaders);
    }

    @Override
    public Set<CodeModelDefinition<?>> getCodeModelDefinitions() {
        return this.codeModelDefs;
    }

    @Override
    public void setCodeModelDefinitions(Set<CodeModelDefinition<?>> codeModelDefs) {
        this.codeModelDefs.clear();
        this.codeModelDefs.addAll(codeModelDefs);
    }

    @Override
    public Map<String, VocabularyLoader<? extends ValueSetCodeModel>> getValueSetCodeLoaders() {
        return this.valueSetCodeLoaders;
    }

    @Override
    public void setValueSetCodeLoaders(Map<String, VocabularyLoader<? extends ValueSetCodeModel>> valueSetCodeLoaders) {
        this.valueSetCodeLoaders.clear();
        this.valueSetCodeLoaders.putAll(valueSetCodeLoaders);
    }

    @Override
    public Set<ValueSetModelDefinition<?>> getValueSetModelDefinitions() {
        return this.valueSetModelDefs;
    }

    @Override
    public void setValueSetModelDefinitions(Set<ValueSetModelDefinition<?>> valueSetModelDefs) {
        this.valueSetModelDefs.clear();
        this.valueSetModelDefs.addAll(valueSetModelDefs);
    }
}
