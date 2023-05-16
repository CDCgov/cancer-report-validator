package gov.hhs.onc.crigtt.web.jaxrs.impl;

import gov.hhs.onc.crigtt.transform.impl.CrigttSerializer;
import javax.annotation.Nullable;
import javax.annotation.Priority;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.PreMatching;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import net.sf.saxon.event.CommentStripper;
import net.sf.saxon.lib.AugmentedSource;
import net.sf.saxon.s9api.SaxonApiException;
import net.sf.saxon.s9api.SaxonApiUncheckedException;
import net.sf.saxon.value.Whitespace;
import org.apache.commons.lang3.StringUtils;
import org.apache.cxf.Bus;
import org.apache.cxf.helpers.DOMUtils;
import org.apache.cxf.jaxrs.model.wadl.WadlGenerator;
import org.apache.cxf.message.Message;
import org.springframework.web.context.ServletContextAware;
import org.w3c.dom.Document;

@PreMatching
@Priority(1)
public class CrigttWadlGenerator extends WadlGenerator implements ServletContextAware {
    private final static String EXISTING_RESOURCE_PATH_PREFIX = "..";

    @Resource(name = "serializerXmlDisplay")
    private CrigttSerializer displayXmlSerializer;

    private ServletContext servletContext;

    public CrigttWadlGenerator(Bus bus) {
        super(bus);
    }

    @Override
    protected void doFilter(ContainerRequestContext reqContext, Message msg) {
        Response resp =
            this.getExistingResource(msg, reqContext.getUriInfo(),
                (EXISTING_RESOURCE_PATH_PREFIX + StringUtils.removeStart(((String) msg.get(Message.REQUEST_URI)), this.servletContext.getContextPath())));

        if (resp != null) {
            reqContext.abortWith(resp);
        } else {
            super.doFilter(reqContext, msg);
        }
    }

    @Nullable
    @Override
    public Response getExistingWadl(Message msg, UriInfo uriInfo, MediaType contentType) {
        return this.postProcessExistingResponse(super.getExistingWadl(msg, uriInfo, contentType));
    }

    @Nullable
    @Override
    public Response getExistingResource(Message msg, UriInfo uriInfo, String href) {
        return this.postProcessExistingResponse(super.getExistingResource(msg, uriInfo, href));
    }

    @Nullable
    private Response postProcessExistingResponse(@Nullable Response resp) {
        Object respEntity;

        if ((resp == null) || !((respEntity = resp.getEntity()) instanceof DOMSource)) {
            return resp;
        }

        DOMSource respSrc = ((DOMSource) respEntity);

        AugmentedSource augmentedRespSrc = AugmentedSource.makeAugmentedSource(respSrc);
        augmentedRespSrc.setStripSpace(Whitespace.ALL);
        augmentedRespSrc.addFilter(CommentStripper::new);

        Document respDoc = DOMUtils.createDocument();

        try {
            this.displayXmlSerializer.serializeToResult(augmentedRespSrc, new DOMResult(respDoc));
        } catch (SaxonApiException e) {
            throw new SaxonApiUncheckedException(e);
        }

        respSrc.setNode(respDoc);

        return resp;
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}
