package gov.hhs.onc.crigtt.web.validate.impl;

import gov.hhs.onc.crigtt.validate.ValidatorError;
import gov.hhs.onc.crigtt.validate.impl.ValidatorErrorImpl;
import java.util.Arrays;
import java.util.Optional;
import jakarta.annotation.Priority;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.ExceptionMapper;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.springframework.stereotype.Component;

@Component("exceptionMapperValidator")
@Priority(0)
public class ValidatorExceptionMapper implements ExceptionMapper<Exception> {
    @Override
    public Response toResponse(Exception exception) {
        ValidatorError error = new ValidatorErrorImpl();
        error.setMessage(Optional.ofNullable(ExceptionUtils.getRootCause(exception)).orElse(exception).getMessage());
        error.setStackTrace(Arrays.asList(ExceptionUtils.getRootCauseStackTrace(exception)));

        return Response.serverError().entity(error).build();
    }
}
