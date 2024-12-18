
package gov.hhs.onc.crigtt.validate.testcases;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for MatchingLevel.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="MatchingLevel"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="EQUALS"/&gt;
 *     &lt;enumeration value="EQUALS_IGNORE_CASE"/&gt;
 *     &lt;enumeration value="NOT_EQUALS"/&gt;
 *     &lt;enumeration value="SUBSTRING"/&gt;
 *     &lt;enumeration value="REGEXP"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "MatchingLevel")
@XmlEnum
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public enum MatchingLevel {

    EQUALS,
    EQUALS_IGNORE_CASE,
    NOT_EQUALS,
    SUBSTRING,
    REGEXP;

    public String value() {
        return name();
    }

    public static MatchingLevel fromValue(String v) {
        return valueOf(v);
    }

}
