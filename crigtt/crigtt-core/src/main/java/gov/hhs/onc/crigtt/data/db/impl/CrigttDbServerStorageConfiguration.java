package gov.hhs.onc.crigtt.data.db.impl;

import com.orientechnologies.orient.server.config.OServerStorageConfiguration;

public class CrigttDbServerStorageConfiguration extends OServerStorageConfiguration {
    public CrigttDbServerStorageConfiguration(String name, String path, String user, String pass) {
        this.loadOnStartup = true;
        this.name = name;
        this.path = path;
        this.userName = user;
        this.userPassword = pass;
    }
}
