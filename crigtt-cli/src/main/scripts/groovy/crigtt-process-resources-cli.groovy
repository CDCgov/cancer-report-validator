ant.fileset(dir: "${project.properties["project.build.cliBinDirectory"]}", includes: "${project.artifactId}*").each{
    it.file.write(it.file.text.replaceAll(~/(\s+\-D)(app\.[a-z]+)/, "\$1crigtt.\$2"))
}
