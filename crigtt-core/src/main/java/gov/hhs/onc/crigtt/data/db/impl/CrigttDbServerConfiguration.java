package gov.hhs.onc.crigtt.data.db.impl;

import com.orientechnologies.orient.core.config.OGlobalConfiguration;
import com.orientechnologies.orient.server.config.OServerConfiguration;
import com.orientechnologies.orient.server.config.OServerEntryConfiguration;
import com.orientechnologies.orient.server.config.OServerNetworkConfiguration;
import java.util.Map;
import javax.annotation.Nonnegative;

public class CrigttDbServerConfiguration extends OServerConfiguration {
    public CrigttDbServerConfiguration() {
        this.network = new OServerNetworkConfiguration(null);
    }

    public void setGlobals(Map<OGlobalConfiguration, Object> globals) {
        globals.forEach(OGlobalConfiguration::setValue);
    }

    public String getIpAddress() {
        return this.network.listeners.get(0).ipAddress;
    }

    public void setIpAddress(String ipAddr) {
        this.network.listeners.get(0).ipAddress = ipAddr;
    }

    @Nonnegative
    public int getPort() {
        return Integer.parseInt(this.network.listeners.get(0).portRange);
    }

    public void setPort(@Nonnegative int port) {
        this.network.listeners.get(0).portRange = Integer.toString(port);
    }

    public void setProperties(Map<String, String> props) {
        this.properties =
            props.entrySet().stream().map(propEntry -> new OServerEntryConfiguration(propEntry.getKey(), propEntry.getValue()))
                .toArray(OServerEntryConfiguration[]::new);
    }

    public void setStorages(CrigttDbServerStorageConfiguration ... storages) {
        this.storages = storages;
    }

    public void setUsers(CrigttServerDbUserConfiguration ... users) {
        this.users = users;
    }
}
