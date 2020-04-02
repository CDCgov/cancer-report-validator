package gov.hhs.onc.crigtt.validate.vocab.loader.impl;

import com.orientechnologies.orient.core.record.impl.ODocument;
import com.orientechnologies.orient.object.db.OObjectDatabaseTx;
import gov.hhs.onc.crigtt.utils.CrigttStringUtils;
import gov.hhs.onc.crigtt.validate.vocab.VocabFields;
import gov.hhs.onc.crigtt.validate.vocab.model.impl.IcdO3Model;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.sitenv.vocabularies.loader.DelimitedTextVocabularyLoader;
import org.springframework.stereotype.Component;

@Component("codeLoaderIcdO3")
public class IcdO3Loader extends DelimitedTextVocabularyLoader<IcdO3Model> {
    private final static String TOPOGRAPHY_AXIS_CODE_ID_PREFIX = "C";

    private final static String USED_TOPOGRAPHY_CODE_LEVEL_STR = Integer.toString(4);

    private final static String MORPHOLOGY_CODE_DELIM = "/";

    public IcdO3Loader() {
        super(IcdO3Model.class, 2, 4, 1);
    }

    @Override
    protected boolean processLine(OObjectDatabaseTx dbConnection, ODocument doc, Map<String, String> baseFields, Map<String, String> fields, int lineIndex,
        String line) {
        String[] lineParts = StringUtils.splitPreserveAllTokens(line, CrigttStringUtils.TAB, 3);

        if ((lineParts.length != 3) || (StringUtils.startsWith(line, TOPOGRAPHY_AXIS_CODE_ID_PREFIX) && !USED_TOPOGRAPHY_CODE_LEVEL_STR.equals(lineParts[1]))) {
            return false;
        }

        String code = lineParts[0];
        String displayName = lineParts[2];

        addField(dbConnection, doc, fields, code, displayName);

        if (StringUtils.contains(code, MORPHOLOGY_CODE_DELIM)) {
            addField(dbConnection, doc, fields, code.substring(0, code.indexOf(MORPHOLOGY_CODE_DELIM)), displayName);
        }

        return true;
    }

    @Override
    protected Map<String, String> buildBaseFields() {
        Map<String, String> baseFields = super.buildBaseFields();
        baseFields.put(VocabFields.CODE_SYSTEM_ID_NAME, IcdO3Model.CODE_SYSTEM_ID);
        baseFields.put(VocabFields.CODE_SYSTEM_NAME_NAME, IcdO3Model.CODE_SYSTEM_NAME);

        return baseFields;
    }

    private void addField(OObjectDatabaseTx dbConnection, ODocument doc, Map<String, String> fields, String code, String displayName) {
        fields.clear();
        fields.put(VocabFields.CODE_NAME, CrigttStringUtils.unquote(code));
        fields.put(VocabFields.DISPLAY_NAME_NAME, CrigttStringUtils.unquote(displayName));
        fields.putAll(this.buildBaseFields());

        this.loadDocument(dbConnection, doc, fields);
    }
}
