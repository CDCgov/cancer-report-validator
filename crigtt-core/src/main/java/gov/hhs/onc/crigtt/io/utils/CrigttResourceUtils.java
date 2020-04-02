package gov.hhs.onc.crigtt.io.utils;

import java.io.IOException;
import javax.annotation.Nullable;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.PathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;

public final class CrigttResourceUtils {
    private CrigttResourceUtils() {
    }

    @Nullable
    public static String extractPath(Resource resource) {
        try {
            if (resource instanceof UrlResource) {
                return resource.getURL().toString();
            } else if (resource instanceof FileSystemResource) {
                return ((FileSystemResource) resource).getPath();
            } else if (resource instanceof ClassPathResource) {
                return ((ClassPathResource) resource).getPath();
            } else if (resource instanceof PathResource) {
                return ((PathResource) resource).getPath();
            }
        } catch (IOException ignored) {
        }

        return null;
    }
}
