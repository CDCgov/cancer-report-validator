package gov.hhs.onc.crigtt.io.impl;

public class StandardOutputResource extends OutputStreamResource {
    public StandardOutputResource() {
        super(System.out, "stdout");
    }
}
