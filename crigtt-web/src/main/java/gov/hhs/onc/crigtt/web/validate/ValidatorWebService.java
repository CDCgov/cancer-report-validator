package gov.hhs.onc.crigtt.web.validate;

import gov.hhs.onc.crigtt.validate.ValidatorReport;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.apache.cxf.jaxrs.ext.multipart.Multipart;
import org.springframework.http.MediaType;

@Path("/validator")
public interface ValidatorWebService {
    @Consumes({ MediaType.MULTIPART_FORM_DATA_VALUE })
    @Path("/validate")
    @POST
    @Produces({ MediaType.APPLICATION_JSON_VALUE, MediaType.TEXT_HTML_VALUE, MediaType.TEXT_XML_VALUE })
    public ValidatorReport validate(@Multipart(ValidatorParameters.FILE_NAME) Attachment docAttachment,
        @Multipart(ValidatorParameters.TESTCASE_NAME) String testcaseId) throws Exception;
}
