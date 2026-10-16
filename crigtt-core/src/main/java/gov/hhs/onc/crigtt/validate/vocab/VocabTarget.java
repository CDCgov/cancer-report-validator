
package gov.hhs.onc.crigtt.validate.vocab;

import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for VocabTarget.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="VocabTarget"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="CODE_ID"/&gt;
 *     &lt;enumeration value="CODE_NAME"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "VocabTarget")
@XmlEnum
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
public enum VocabTarget {

    CODE_ID,
    CODE_NAME;

    public String value() {
        return name();
    }

    public static VocabTarget fromValue(String v) {
        return valueOf(v);
    }

}
