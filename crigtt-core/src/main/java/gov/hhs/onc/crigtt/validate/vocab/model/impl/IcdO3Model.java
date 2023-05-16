package gov.hhs.onc.crigtt.validate.vocab.model.impl;

import org.sitenv.vocabularies.model.CodeModel;
import org.sitenv.vocabularies.model.CodeModelDefinition;

public class IcdO3Model extends CodeModel {
    public final static String TYPE = "ICD-O-3";
    public final static String NAME = IcdO3Model.class.getSimpleName();

    public final static String CODE_SYSTEM_ID = "2.16.840.1.113883.6.43.1";
    public final static String CODE_SYSTEM_NAME = "ICD-O-3";

    public final static CodeModelDefinition<IcdO3Model> DEF = new CodeModelDefinition<>(IcdO3Model.class, TYPE, CODE_SYSTEM_ID, CODE_SYSTEM_NAME);
}
