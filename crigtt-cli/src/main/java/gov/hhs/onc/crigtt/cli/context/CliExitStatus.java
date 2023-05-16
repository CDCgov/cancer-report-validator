package gov.hhs.onc.crigtt.cli.context;

public enum CliExitStatus {
    SUCCESS(0), ERROR(1);

    private final int code;

    private CliExitStatus(int code) {
        this.code = code;
    }

    public int getCode() {
        return this.code;
    }
}
