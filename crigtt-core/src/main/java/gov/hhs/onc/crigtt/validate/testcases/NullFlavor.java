package gov.hhs.onc.crigtt.validate.testcases;

import gov.hhs.onc.crigtt.xml.CrigttXmlNs;
import jakarta.xml.bind.annotation.XmlEnum;
import jakarta.xml.bind.annotation.XmlType;

@XmlType(name = "null-flavor", namespace = CrigttXmlNs.VALIDATE_TESTCASES_URI)
@XmlEnum
public enum NullFlavor {
    NA("NA"),
    NASK("NASK"),
    ASKU("ASKU"),
    NAV("NAV"),
    UNK("UNK");

    private final String value;

    private NullFlavor(String value) {
        this.value = value;
    }

    public String value() {
        return this.value;
    }

    public static NullFlavor fromValue(String value) {
        for (NullFlavor nullFlavor : NullFlavor.values()) {
            if (nullFlavor.value.equals(value)) {
                return nullFlavor;
            }
        }
        throw new IllegalArgumentException(value);
    }
}
