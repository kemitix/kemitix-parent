KEMITIX-PARENT
==============

This Maven Parent POM several preconfigured plugins.

### Usage

#### Maven

    <parent>
        <groupId>net.kemitix</groupId>
        <artifactId>kemitix-parent</artifactId>
        <version>RELEASE</version>
    </parent>

## Versions

If you want to override the version or configuration values of any of the
plugins configured by this parent, you can set the following properties to the
desired value.

* project.build.sourceEncoding
* project.reporting.outputEncoding
* kemitix.build.directory
* kemitix-quality-maven-plugin.version
* lombok.version
* maven-javadoc-plugin.version
* maven-source-plugin.version
* maven-gpg-plugin.version
* maven-deploy-plugin.version
* maven-compiler-plugin.version
* maven-surefire-plugin.version
* maven-failsafe-plugin.version
* maven-jxr-plugin.version
* java.version
* versions.version
* coveralls-maven-plugin.version

## Kemitix Quality

The [kemitix-quality-maven-plugin](https://github.com/kemitix/kemitix-quality-maven-plugin)
provides several preconfigured quality related plugins.

N.B. The Kemitix Quality plugin required 100% code instruction coverage and mutation ratio. See the project page for details of adjusting these levels if needed.

## Maven Compiler Plugin

The [Maven Compiler Plugin](https://maven.apache.org/plugins/maven-compiler-plugin/)
compiles your sources.

### Configuration

Ref: [compile:compile](https://maven.apache.org/plugins/maven-compiler-plugin/compile-mojo.html)

* showDeprecation: true
* showWarnings: true
* source: ${java.version}
* target: ${java.version}
* encoding: ${project.build.sourceEncoding}

## Maven Surefire Plugin

The [Maven Surefire Plugin](http://maven.apache.org/surefire/maven-surefire-plugin/index.html)
runs your Unit Tests.

### Configuration

No configuration applied beyond the defaults.

## Maven Failsafe Plugin

The [Maven Failsafe Plugin](http://maven.apache.org/surefire/maven-failsafe-plugin/index.html)
runs your Integration Tests.

Runs its [integration-test](http://maven.apache.org/surefire/maven-failsafe-plugin/integration-test-mojo.html)
goal during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Maven Source Plugin

The [Maven Source Plugin](https://maven.apache.org/plugins/maven-source-plugin/)
bundles your sources into a jar file ready for deployment.

Runs its [jar-no-fork](https://maven.apache.org/plugins/maven-source-plugin/jar-no-fork-mojo.html)
goal during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Maven Javadoc Plugin

The [Maven Javadoc Plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/)
generates your html javadocs and bundles them into a jar file ready for
deployment.

Runs its [jar](https://maven.apache.org/plugins/maven-javadoc-plugin/jar-mojo.html)
goal during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Maven Deploy Plugin

The [Maven Deploy Plugin](https://maven.apache.org/plugins/maven-deploy-plugin/)
uploads your artifacts to a remote repository.

### Configuration

No configuration applied beyond the defaults.

## Maven JXR Plugin

The [Maven JXR Plugin](http://maven.apache.org/jxr/maven-jxr-plugin/index.html)
produces cross-referenced HTML pages of your source code.

### Configuration

No configuration applied beyond the defaults.

## Coveralls

The [Coveralls Maven Plugin](https://github.com/trautonen/coveralls-maven-plugin)
publishes coverage data to coveralls.io.

### Configuration

The plugin is not configured to run automatically. It must be initiated manually:

```shell
mvn -P release test jacoco:report coveralls:report
```

#### Requirements

In order to use the plugin:

* *must* enable the `release` profile

# Distribution Management

Remote repositories are provided for the Sonatype Nexus Snapshots and Nexus Release
Repositories. See the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html)
for information on how to deploy your artifact the Maven Central through
Sonatype.

### Changing the Build Directory

If you want to change the build directory, e.g. from your settings.xml to an SSD
or ram drive, then set the value of the `kemitix.build.directory` to your required
locations. e.g.
`<properties>
<kemitix.build.directory>/mnt/ramdrive/${project.groupId}/${project.artifactId}</kemitix.build.directory>
</properties>`
