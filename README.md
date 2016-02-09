KEMITIX-PARENT
==============

This Maven Parent POM several preconfigured plugins.

### Usage

#### Maven

    <parent>
        <groupId>net.kemitix</groupId>
        <artifactId>kemitix-parent</artifactId>
    </parent>

## Maven Checkstyle Plugin

The [Maven Checkstyle Plugin](https://maven.apache.org/plugins/maven-checkstyle-plugin/)
uses the latest version of the Checkstyle library
([Release Notes](http://checkstyle.sourceforge.net/releasenotes.html)).

Also available for you to use are the rules defined by
[Sevntu](http://sevntu-checkstyle.github.io/sevntu.checkstyle/).

<strong>Your project <em>must</em> provide a `checkstyle.xml` file in it's root
directory.</strong> See the Checkstyle Plugin homepage for `sun_checks.xml` and
`google_checks.xml` examples. There is a modified version of `sun_checks.xml`
bundled in the source jar as `checkstyle.xml`.

Your build will fail on any violations or errors found. You can modify your
`checkstyle.xml` to suite your own needs.

### Configuration

Ref [checkstyle:check](https://maven.apache.org/plugins/maven-checkstyle-plugin/check-mojo.html)

* configLocation: checkstyle.xml
* consoleOutput: true
* encoding: UTF-8
* failOnViolation: true
* failOnError: true
* linkXRef: true

## Maven Compiler Plugin

The [Maven Compiler Plugin](https://maven.apache.org/plugins/maven-compiler-plugin/)
compiles your sources.

### Configuration

Ref: [compile:compile](https://maven.apache.org/plugins/maven-compiler-plugin/compile-mojo.html)

* showDeprecation: true
* showWarnings: true
* source: 1.8
* target: 1.8

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

## Maven PMD Plugin

The [Maven PMD Plugin](https://maven.apache.org/plugins/maven-pmd-plugin/index.html)
runs the [PMD](http://pmd.sourceforge.net/) code analysis.

Runs its [pmd](https://maven.apache.org/plugins/maven-pmd-plugin/pmd-mojo.html)
and [cpd](https://maven.apache.org/plugins/maven-pmd-plugin/cpd-mojo.html) goals
during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Findbugs Maven Plugin

The [Findbugs Maven Plugin](http://gleclaire.github.io/findbugs-maven-plugin/)
runs the [Findbugs](http://findbugs.sourceforge.net/factSheet.html) code
analysis.

Runs its [check](http://gleclaire.github.io/findbugs-maven-plugin/check-mojo.html)
goal during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Jacoco Maven Plugin

The [Jacoco Maven Plugin](http://eclemma.org/jacoco/trunk/doc/maven.html)
provides code coverage analysis after your tests have run.

### Configuration

#### Classes

For each class not excluded the Lines Covered Ratio must be at least 50%.

For each class not excluded the Instructions Covered Ration must be at least
80%.

Excluded from analysis:

* `*Test` - test classes

## Maven Source Plugin

The [Maven Source Plugin](https://maven.apache.org/plugins/maven-source-plugin/)
bundles your sources into a jar file ready for deployment.

Runs its [jar-no-fork](http://gleclaire.github.io/findbugs-maven-plugin/check-mojo.html)
goal during the `verify` phase.

### Configuration

No configuration applied beyond the defaults.

## Maven Javadoc Plugin

The [Maven Javadoc Plugin](https://maven.apache.org/plugins/maven-javadoc-plugin/)
generates your html javadocs and bundles them into a jar file ready for
deployment.

Runs its [jar-no-fork](http://gleclaire.github.io/findbugs-maven-plugin/check-mojo.html)
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

## Highwheel Plugin

The [Highwheel Plugin](https://github.com/hcoles/highwheel)
generates a report for packages and classes at `target/highwheel/index.html`
that highlights where there are cyclic dependencies between packages and between
classes.

### Configuration

The plugin will `analyse` the project during the `verify` phase.

## Digraph Dependency Plugin

The [Digraph Dependency Plugin](https://github.com/kemitix/digraph-dependency-maven-plugin)
generates a DOT file diagram showing the dependencies between packages in a project.

### Configuration

The plugin will generate the `target/digraph.dot` file during the `verify` phase.

The plugin will filter to packages within the `net.kemitix` package namespace.

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
