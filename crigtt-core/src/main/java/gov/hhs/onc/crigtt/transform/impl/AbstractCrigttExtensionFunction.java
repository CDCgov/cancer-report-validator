package gov.hhs.onc.crigtt.transform.impl;

import java.util.Map;
import javax.annotation.Nonnegative;
import net.sf.saxon.expr.XPathContext;
import net.sf.saxon.lib.ExtensionFunctionCall;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.om.Sequence;
import net.sf.saxon.om.StructuredQName;
import net.sf.saxon.s9api.SaxonApiUncheckedException;
import net.sf.saxon.s9api.XdmValue;
import net.sf.saxon.trans.XPathException;
import net.sf.saxon.value.SequenceExtent;
import net.sf.saxon.value.SequenceType;

public abstract class AbstractCrigttExtensionFunction extends ExtensionFunctionDefinition {
    protected class CrigttExtensionFunctionCall extends ExtensionFunctionCall {
        @Override
        public Sequence call(XPathContext context, Sequence[] args) throws XPathException {
            XdmValue[] wrappedArgs = new XdmValue[args.length];

            for (int a = 0; a < args.length; a++) {
                wrappedArgs[a] = XdmValue.wrap(SequenceExtent.makeSequenceExtent(args[a].iterate()));
            }

            try {
                return AbstractCrigttExtensionFunction.this.call(context, ((CrigttController) context.getController()).getContextData(), wrappedArgs)
                    .getUnderlyingValue();
            } catch (Exception e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
    }

    protected StructuredQName name;
    protected SequenceType resultType;
    protected SequenceType[] argTypes;

    protected AbstractCrigttExtensionFunction(StructuredQName name, SequenceType resultType, SequenceType ... argTypes) {
        this.name = name;
        this.resultType = resultType;
        this.argTypes = argTypes;
    }

    protected abstract XdmValue call(XPathContext context, Map<Object, Object> contextData, XdmValue[] args) throws Exception;

    @Override
    public ExtensionFunctionCall makeCallExpression() {
        return new CrigttExtensionFunctionCall();
    }

    @Override
    public SequenceType getResultType(SequenceType[] suppliedArgTypes) {
        return this.resultType;
    }

    @Override
    public SequenceType[] getArgumentTypes() {
        return this.argTypes;
    }

    @Override
    public StructuredQName getFunctionQName() {
        return this.name;
    }

    @Nonnegative
    @Override
    public int getMaximumNumberOfArguments() {
        return this.argTypes.length;
    }

    @Nonnegative
    @Override
    public int getMinimumNumberOfArguments() {
        return this.argTypes.length;
    }
}
