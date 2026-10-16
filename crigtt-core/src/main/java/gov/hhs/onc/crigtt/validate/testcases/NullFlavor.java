
package gov.hhs.onc.crigtt.validate.testcases;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for NullFlavor.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="NullFlavor"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="NI"/&gt;
 *     &lt;enumeration value="NA"/&gt;
 *     &lt;enumeration value="UNK"/&gt;
 *     &lt;enumeration value="ASKU"/&gt;
 *     &lt;enumeration value="NAV"/&gt;
 *     &lt;enumeration value="NASK"/&gt;
 *     &lt;enumeration value="MSK"/&gt;
 *     &lt;enumeration value="OTH"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "NullFlavor")
@XmlEnum
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public enum NullFlavor {

    NI,
    NA,
    UNK,
    ASKU,
    NAV,
    NASK,
    MSK,
    OTH;

    public String value() {
        return name();
    }

    public static NullFlavor fromValue(String v) {
        return valueOf(v);
    }

}
