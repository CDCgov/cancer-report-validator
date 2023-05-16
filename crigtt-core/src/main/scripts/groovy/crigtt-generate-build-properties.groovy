import org.joda.time.Instant

project.properties["crigtt.build.timestamp"] = Long.toString(Instant.now().millis)
project.properties["crigtt.build.version"] = project.version
