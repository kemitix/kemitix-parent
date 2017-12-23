# Kemitix Maven Tiles

## Usage

```xml
<project>
    <properties>
        <tiles-maven-plugin.version>2.10</tiles-maven-plugin.version>
        <kemitix-tiles.version>0.1.0-SNAPSHOT</kemitix-tiles.version>
    </properties>
    <build>
        <plugins>
            <plugin>
                <groupId>io.repaint.maven</groupId>
                <artifactId>tiles-maven-plugin</artifactId>
                 <version>${tiles-maven-plugin.version}</version>
                <extensions>true</extensions>
                <configuration>
                    <tiles>
                         <tile>net.kemitix.tiles:enforcer-tile:${kemitix-tiles.version}</tile>
                         <tile>net.kemitix.tiles:compiler-tile:${kemitix-tiles.version}</tile>
                         <tile>net.kemitix.tiles:checkstyle-tile:${kemitix-tiles.version}</tile>
                         <tile>net.kemitix.tiles:digraph-tile:${kemitix-tiles.version}</tile>
                         <tile>net.kemitix.tiles:release-tile:${kemitix-tiles.version}</tile>
                   </tiles>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

Enabling the plugins in the `release-tile` requires the `release` profile to be active.
