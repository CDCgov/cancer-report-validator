package gov.hhs.onc.crigtt.validate.render;

import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;

public interface XmlTransformValidatorRenderer extends ValidatorRenderer {
    public CrigttXsltExecutable getXsltExecutable();

    public void setXsltExecutable(CrigttXsltExecutable xsltExec);
}
