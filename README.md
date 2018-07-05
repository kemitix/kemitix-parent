KEMITIX-PARENT
==============

A parent POM for my own personal projects.

[![Sonatype Nexus (Releases)](https://img.shields.io/nexus/r/https/oss.sonatype.org/net.kemitix/kemitix-parent.svg?style=for-the-badge)](https://oss.sonatype.org/content/repositories/releases/net/kemitix/kemitix-parent/)
[![Maven Central](https://img.shields.io/maven-central/v/net.kemitix/kemitix-parent.svg?style=for-the-badge)](https://search.maven.org/#search|ga|1|g%3A"net.kemitix"%20AND%20a%3A"kemitix-parent")

### Usage

```xml
<project>
    <parent>
        <groupId>net.kemitix</groupId>
        <artifactId>kemitix-parent</artifactId>
        <version>RELEASE</version>
    </parent>
```

### Contents

The POM defines the following items:

* `issueManagement`
* `scm`
* `url`
* `inceptionYear`
* `licenses`
* `developers`
The POM sets the following properties:

* `project.reporting.outputEncoding` as `UTF-8`
* `java.version` as `1.8`

### Profile `release`

#### GPG Artifact Signing

Artifacts will be GPG signed during the `package` phase when the `release` profile is enabled.

#### Distribution Management

The Nexus Sonatype repositories are declared within `distributionManagement` when the `release` profile is enableds.
