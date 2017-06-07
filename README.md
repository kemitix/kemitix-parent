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
* kemitix-checkstyle-ruleset.version
* kemitix-checkstyle-ruleset.level
* lombok.version
* digraph-dependency.version
* digraph-dependency.basePackage
* required-maven.version
* maven-enforcer-plugin.version
* maven-javadoc-plugin.version
* maven-source-plugin.version
* maven-gpg-plugin.version
* maven-deploy-plugin.version
* maven-compiler-plugin.version
* maven-surefire-plugin.version
* maven-failsafe-plugin.version
* maven-pmd-plugin.version
* huntbugs.version
* jacoco-maven-plugin.version
* highwheel-maven.version
* pitest.version
* maven-jxr-plugin.version
* jacoco-class-line-covered-ratio
* jacoco-class-instruction-covered-ratio
* jacoco-class-missed-count-maximum
* java.version
* versions.version

## Checkstyle

The Checkstyle plugin is configured using the
`kemitix-checkstyle-ruleset-maven-plugin`.

The `kemitix-checkstyle-ruleset` provides five levels of checks. The
default is set to `5-complexity`, the most strict. It runs during the
`validate` phase.

### Configuration

Set the property `kemitix-checkstyle-ruleset.level` to one of the
following values to select a less-strict ruleset:

* 1-layout
* 2-naming
* 3-javadoc
* 4-tweaks
* 5-complexity

## Maven Enforcer Plugin

Ensures that a suitable version of Maven is being used.

Runs it's `display-info` and `enforce` goals during the `validate` phase.

### Configuration

* requireMavenVersion: ${required-maven.version}

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

## Maven PMD Plugin

The [Maven PMD Plugin](https://maven.apache.org/plugins/maven-pmd-plugin/index.html)
runs the [PMD](http://pmd.sourceforge.net/) code analysis.

Runs its [pmd](https://maven.apache.org/plugins/maven-pmd-plugin/pmd-mojo.html)
and [cpd](https://maven.apache.org/plugins/maven-pmd-plugin/cpd-mojo.html) goals
during the `compile` phase.

### Configuration

No configuration applied beyond the defaults.

## Huntbugs Maven Plugin

The [Huntbugs Maven Plugin](https://github.com/amaembo/huntbugs) is a
static code analyser.

Runs during the `compile` phase.

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
* `*IT` - integration test classes
* `*Main` - main classes
* `*Application` - application classes
* `*Configuration` - (Spring) configuration classes

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

## Highwheel Plugin

The [Highwheel Plugin](https://github.com/hcoles/highwheel)
generates a report for packages and classes at `target/highwheel/index.html`
that highlights where there are cyclic dependencies between packages and between
classes.

### Configuration

The plugin will `analyse` the project during the `verify` phase.

## Pitest Plugin

The [Pitest Plugin](http://pitest.org/)
provides mutation testing for classes found in the generated `target`
directory.

### Configuration

The plugin with perform mutation tests during the `verify` phase.

By default, classed named `Immutable*`, will not be included.
(e.g. classes generated by `org.immutables:value`)

The following properties can adjust the default configuration.

#### `pitest.skip`

Default is `false`.

Set this to `true` to disable the **Pitest Plugin**.

#### `pitest.coverage`

Default is `0`%. (i.e. disabled)

Line coverage at which to fail build.

#### `pitest.mutation`

Default is `0`%. (i.e. disabled)

Mutation score threshold at which to fail build.

#### `pitest.failWhenNoMutations`

Default is `true`.

Set this to `false` to not fail build when there are no mutations.

## Digraph Dependency Plugin

The [Digraph Dependency Plugin](https://github.com/kemitix/digraph-dependency-maven-plugin)
generates a DOT file diagram showing the dependencies between packages in a project.

### Configuration

The plugin will generate the `target/digraph.dot` file during the `validate` phase.

Set the `digraph-dependency.basePackage` property to the root package to graph.

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
