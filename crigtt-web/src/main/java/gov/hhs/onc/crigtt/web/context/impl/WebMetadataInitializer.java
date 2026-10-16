package gov.hhs.onc.crigtt.web.context.impl;

import gov.hhs.onc.crigtt.context.impl.AbstractCrigttMetadataInitializer;
import gov.hhs.onc.crigtt.context.impl.CrigttApplication;
import java.io.File;
import java.util.Optional;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

@Order(Ordered.HIGHEST_PRECEDENCE)
public class WebMetadataInitializer extends AbstractCrigttMetadataInitializer {
    public WebMetadataInitializer(CrigttApplication app) {
        super(app, "crigtt-web");
    }

    @Override
    public File buildApplicationHome() {
        return Optional.ofNullable(this.app.getHome()).orElseGet(super::buildApplicationHome);
    }
}
