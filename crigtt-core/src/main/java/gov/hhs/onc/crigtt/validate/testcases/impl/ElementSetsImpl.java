
package gov.hhs.onc.crigtt.validate.testcases.impl;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import com.fasterxml.jackson.annotation.JsonTypeName;
import gov.hhs.onc.crigtt.validate.testcases.ElementSet;
import gov.hhs.onc.crigtt.validate.testcases.ElementSets;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ElementSets", propOrder = {
    "elementSets"
})
@Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
@JsonTypeName("elementSets")
public class ElementSetsImpl implements ElementSets
{

    @XmlElement(name = "elementSet", required = true, type = ElementSetImpl.class)
    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    protected List<ElementSet> elementSets;
    private final static long serialVersionUID = 0L;

    /**
     * Default no-arg constructor
     * 
     */
    public ElementSetsImpl() {
        super();
    }

    /**
     * Fully-initialising value constructor
     * 
     */
    public ElementSetsImpl(final List<ElementSet> elementSets) {
        this.elementSets = elementSets;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public List<ElementSet> getElementSets() {
        if (elementSets == null) {
            elementSets = new ArrayList<ElementSet>();
        }
        return this.elementSets;
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public boolean isSetElementSets() {
        return ((this.elementSets!= null)&&(!this.elementSets.isEmpty()));
    }

    @Generated(value = "com.sun.tools.xjc.Driver", date = "2023-06-25T07:53:34-04:00", comments = "JAXB RI v2.2.11")
    public void unsetElementSets() {
        this.elementSets = null;
    }

    public void setElementSets(List<ElementSet> value) {
        this.elementSets = value;
    }

}
