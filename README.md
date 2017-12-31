KEMITIX-PARENT
==============

A parent POM for my own personal projects.

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
