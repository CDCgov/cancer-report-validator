package gov.hhs.onc.crigtt.data.db.impl;

import com.orientechnologies.orient.server.config.OServerUserConfiguration;

public class CrigttServerDbUserConfiguration extends OServerUserConfiguration {
    public final static String ALL_RESOURCES = "*";

    public CrigttServerDbUserConfiguration(String user, String pass) {
        this(user, pass, ALL_RESOURCES);
    }

    public CrigttServerDbUserConfiguration(String user, String pass, String resources) {
        super(user, pass, resources);
    }
}
