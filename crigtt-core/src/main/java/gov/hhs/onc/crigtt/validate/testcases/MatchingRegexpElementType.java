
package gov.hhs.onc.crigtt.validate.testcases;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for MatchingRegexpElementType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="MatchingRegexpElementType"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="EMAIL_ADDR"/&gt;
 *     &lt;enumeration value="PHONE_NUM"/&gt;
 *     &lt;enumeration value="TELECOM"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "MatchingRegexpElementType")
@XmlEnum
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public enum MatchingRegexpElementType {

    EMAIL_ADDR,
    PHONE_NUM,
    TELECOM;

    public String value() {
        return name();
    }

    public static MatchingRegexpElementType fromValue(String v) {
        return valueOf(v);
    }

}
