package gov.hhs.onc.crigtt.validate.vocab.impl;

import com.github.sebhoss.warnings.CompilerWarnings;
import com.orientechnologies.orient.object.db.OObjectDatabaseTx;
import com.orientechnologies.orient.server.OServer;
import com.orientechnologies.orient.server.config.OServerStorageConfiguration;
import gov.hhs.onc.crigtt.data.db.CrigttDbPaths;
import gov.hhs.onc.crigtt.data.db.impl.CrigttDbServerConfiguration;
import gov.hhs.onc.crigtt.data.db.utils.CrigttSqlUtils;
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
import org.sitenv.vocabularies.repository.VocabularyRepositoryConnectionInfo;
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

    @javax.annotation.Resource(name = "dbServerConfigValidateVocabDynamic")
    private CrigttDbServerConfiguration dbServerConfig;

    private Map<String, VocabularyLoader<?>> codeLoaders = new LinkedHashMap<>();
    private Set<CodeModelDefinition<?>> codeModelDefs = new LinkedHashSet<>();
    private Map<String, VocabularyLoader<? extends ValueSetCodeModel>> valueSetCodeLoaders = new LinkedHashMap<>();
    private Set<ValueSetModelDefinition<?>> valueSetModelDefs = new LinkedHashSet<>();
    private OServer dbServer;
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
        Optional.ofNullable(this.dbServer).ifPresent(OServer::shutdown);
    }

    @Override
    @SuppressWarnings({ CompilerWarnings.RAWTYPES, CompilerWarnings.UNCHECKED })
    public void afterPropertiesSet() throws Exception {
        boolean dbPrimaryStorageExists = (this.dbPrimaryStorageDir.isDirectory() && (this.dbPrimaryStorageDir.list().length > 0));

        (this.dbServer = new OServer()).startup(this.dbServerConfig);
        this.dbServer.activate();

        (this.vocabRepo = VocabularyRepository.getInstance()).setOrientDbServer(this.dbServer);
        this.vocabRepo.setPrimaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[0]));
        this.vocabRepo.setSecondaryNodeCredentials(this.buildRepositoryConnectionInfo(this.dbServerConfig.storages[1]));

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

        this.vocabRepo.initializeDbConnectionPools();

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

        this.vocabRepo.registerModels(true);

        super.afterPropertiesSet();
    }

    @SuppressWarnings({ CompilerWarnings.UNCHECKED })
    private static Map<String, String> buildParameters(Entry<String, String> ... entries) {
        return CrigttStreamUtils.toMap(() -> new LinkedHashMap<>(entries.length), Stream.of(entries));
    }

    private List<Code> findCodes(boolean forValueSet, Map<String, String> params) {
        try (OObjectDatabaseTx dbConn = this.vocabRepo.getActiveDbConnection()) {
            List<CodeModel> codeModels =
                (forValueSet ? dbConn.command(CrigttSqlUtils.buildSelectQuery(ValueSetCodeModel.class, null, null, params, null)).execute(params) : dbConn
                    .command(CrigttSqlUtils.buildSelectQuery(CodeModel.class, null, null, params, null)).execute(params));

            return (!CollectionUtils.isEmpty(codeModels) ? codeModels.stream()
                .map(codeModel -> new CodeImpl((codeModel = dbConn.detach(codeModel, true)).getCode(), codeModel.getDisplayName()))
                .collect(Collectors.toList()) : Collections.emptyList());
        }
    }

    private VocabularyRepositoryConnectionInfo buildRepositoryConnectionInfo(OServerStorageConfiguration dbStorage) {
        VocabularyRepositoryConnectionInfo repoConnInfo = new VocabularyRepositoryConnectionInfo();
        repoConnInfo.setConnectionInfo((CrigttDbPaths.REMOTE_PROTOCOL_PREFIX + this.dbServerConfig.getIpAddress() + CrigttDbPaths.SERVER_DELIM
            + this.dbServerConfig.getPort() + CrigttDbPaths.DELIM + dbStorage.name));
        repoConnInfo.setPassword(dbStorage.userPassword);
        repoConnInfo.setUsername(dbStorage.userName);

        return repoConnInfo;
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
