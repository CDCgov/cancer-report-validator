package gov.hhs.onc.crigtt.validate.render;

import gov.hhs.onc.crigtt.transform.impl.CrigttXsltExecutable;

public interface XmlTransformValidatorRenderer extends ValidatorRenderer {
    CrigttXsltExecutable getXsltExecutable();

    void setXsltExecutable(CrigttXsltExecutable xsltExec);
}