package gov.hhs.onc.crigtt.transform.impl;

import java.util.stream.Stream;
import javax.annotation.Nullable;
import javax.xml.transform.Source;
import net.sf.saxon.PreparedStylesheet;
import net.sf.saxon.functions.IntegratedFunctionLibrary;
import net.sf.saxon.lib.ExtensionFunctionDefinition;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.XsltCompiler;
import net.sf.saxon.style.Compilation;
import net.sf.saxon.trans.CompilerInfo;
import net.sf.saxon.trans.XPathException;
import org.apache.commons.lang3.ArrayUtils;

public class CrigttXsltCompiler extends XsltCompiler {
    public CrigttXsltCompiler(CrigttProcessor proc) {
        super(proc);
    }

    @Override
    public CrigttXsltExecutable compile(Source src) throws SaxonApiException {
        return this.compile(src, ((ExtensionFunctionDefinition[]) null));
    }

    public CrigttXsltExecutable compile(Source src, @Nullable ExtensionFunctionDefinition ... extFuncs) throws SaxonApiException {
        CrigttProcessor proc = this.getProcessor();
        CompilerInfo compilerInfo = this.getUnderlyingCompilerInfo();

        if (!ArrayUtils.isEmpty(extFuncs)) {
            IntegratedFunctionLibrary extFuncLib = new IntegratedFunctionLibrary();

            Stream.of(extFuncs).forEach(extFuncLib::registerFunction);

            compilerInfo.setExtensionFunctionLibrary(extFuncLib);
        }

        try {
            PreparedStylesheet preparedStylesheet = Compilation.compileSingletonPackage(proc.getUnderlyingConfiguration(), compilerInfo, src);

            return new CrigttXsltExecutable(proc, preparedStylesheet, compilerInfo);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override
    public CrigttProcessor getProcessor() {
        return ((CrigttProcessor) super.getProcessor());
    }
}
