package gov.hhs.onc.crigtt.xml.impl;

import gov.hhs.onc.crigtt.io.impl.ByteArrayResult;
import javax.xml.transform.Source;
import org.springframework.oxm.XmlMappingException;
import org.springframework.oxm.jaxb.Jaxb2Marshaller;

public class CrigttJaxbMarshaller extends Jaxb2Marshaller {
    public <T> T unmarshal(Source src, Class<T> resultClass) throws XmlMappingException {
        return resultClass.cast(super.unmarshal(src));
    }

    public byte[] marshal(Object src) throws XmlMappingException {
        ByteArrayResult result = new ByteArrayResult();

        this.marshal(src, result);

        return result.getBytes();
    }
}
