load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")
load("@io_grpc_grpc_java//:repositories.bzl", "IO_GRPC_GRPC_JAVA_OVERRIDE_TARGETS")
load("@bazel_skylib//lib:dicts.bzl", "dicts")


def maven_jars():
    maven_install(
        artifacts = [
            # Java stdlib stuff
            # "javax.validation:validation-api:2.0.1.Final",
            # "com.sun.xml.bind:jaxb-core:2.3.0",
            # "com.sun.xml.bind:jaxb-impl:2.3.0",
            # "com.sun.activation:javax.activation:1.2.0",
            # "javax.annotation:javax.annotation-api:1.3.2",
            # "org.glassfish.jaxb:jaxb-runtime:2.3.2",
            # "jakarta.xml.bind:jakarta.xml.bind-api:2.3.2",
            # "jakarta.activation:jakarta.activation-api:1.2.1",

            # Lombok
            # "org.projectlombok:lombok:1.18.8",

            # Jetty
            # "org.eclipse.jetty:jetty-client:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-security:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-server:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-servlet:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-servlets:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-webapp:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-xml:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-io:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-http:9.4.44.v20210927",
            # "org.eclipse.jetty:jetty-util:9.4.44.v20210927",

            # Commons
            # "commons-codec:commons-codec:1.14",
            # "commons-io:commons-io:2.6",
            # "commons-lang:commons-lang:2.6",
            # "org.apache.commons:commons-lang3:3.11",
            # "org.apache.commons:commons-pool2:2.4.3",
            # "org.apache.commons:commons-text:1.9",
            # "org.mock-server:mockserver-netty:5.4.1",

            # Testing
            "com.google.truth:truth:jar:1.0.1",
            "io.kotest:kotest-assertions-core-jvm:jar:4.5.0",
            "io.kotest:kotest-runner-junit5-jvm:jar:4.5.0",
            "io.mockk:mockk:1.10.6",
            "junit:junit:4.13.1",
            "org.assertj:assertj-core:3.18.1",
            "org.hamcrest:hamcrest-core:1.3",
            "org.hamcrest:hamcrest-library:1.3",
            "org.jmock:jmock-junit4:2.8.4",
            "org.junit.jupiter:junit-jupiter:jar:5.7.2",
            "org.junit.platform:junit-platform-console:jar:1.7.2",
            "org.mockito:mockito-core:3.10.0",

            # Code style
            "com.pinterest:ktlint:0.34.2",
            "com.google.googlejavaformat:google-java-format:1.7",

            # Metrics
            # "io.prometheus:simpleclient:0.8.0",
            # "io.prometheus:simpleclient_common:0.8.0",
            # "io.prometheus:simpleclient_dropwizard:0.8.0",
            # "io.prometheus:simpleclient_guava:0.8.0",
            # "io.prometheus:simpleclient_httpserver:0.8.0",
            # "io.prometheus:simpleclient_hotspot:0.8.0",
            # "io.prometheus:simpleclient_servlet:0.8.0",
            # "io.prometheus:simpleclient_pushgateway:0.8.0",
            # "io.micrometer:micrometer-registry-prometheus:1.2.1",
            # "io.micrometer:micrometer-core:1.5.1",

            # Logging
            "org.slf4j:jcl-over-slf4j:1.7.30",
            "org.slf4j:jul-to-slf4j:1.7.30",
            "org.slf4j:log4j-over-slf4j:1.7.30",
            "org.slf4j:slf4j-api:1.7.30",
            "org.slf4j:slf4j-simple:1.7.30",
            "ch.qos.logback:logback-access:1.2.3",
            "ch.qos.logback:logback-classic:1.2.3",
            "ch.qos.logback:logback-core:1.2.3",
            "net.logstash.logback:logstash-logback-encoder:5.0",
            "org.codehaus.janino:janino:3.1.6",

            # Google Guava (version matches proto_buf)
            # "com.google.guava:guava:jar:30.1-jre",

            # Google Cloud APIs
            # "com.google.cloud:google-cloud-speech:1.24.0",
            # "com.google.cloud:google-cloud-storage:1.113.0",
            # "com.google.api.grpc:proto-google-cloud-speech-v1:1.24.0",
            # "com.google.api:api-common:1.10.0",

            # AWS SDK v2
            # "software.amazon.awssdk:sdk-core:2.16.19",
            # "software.amazon.awssdk:ses:2.16.19",
            # "software.amazon.awssdk:kms:2.16.19",
            # "software.amazon.awssdk:s3:2.16.19",

            # database clients
            # "biz.paluch.redis:lettuce:4.5.0.Final",
            # "com.ibm.etcd:etcd-java:jar:0.0.18",
            # "mysql:mysql-connector-java:5.1.26",
            # "org.postgresql:postgresql:42.2.23",
            # "com.zaxxer:HikariCP:4.0.3",
            # "io.lettuce:lettuce-core:6.1.3.RELEASE",
            # "org.xerial:sqlite-jdbc:3.36.0.3",

            # JDBI
            # "org.jdbi:jdbi3-json:3.10.0",
            # "org.jdbi:jdbi3-core:3.18.0",
            # "org.jdbi:jdbi3-sqlobject:3.18.0",
            # "org.jdbi:jdbi3-jackson2:3.10.0",
            # "org.jdbi:jdbi3-kotlin:3.10.0",
            # "org.jdbi:jdbi3-kotlin-sqlobject:3.10.0",

            # jOOQ
            "org.jooq:jooq:3.14.3",
            "org.jooq:jooq-meta:3.14.3",
            "org.jooq:jooq-codegen:3.14.3",
            "org.jooq:jooq-meta-extensions:3.14.3",
            "com.h2database:h2:1.4.200",

            # Build-time IDE annotations
            "org.jetbrains:annotations:jar:13.0",

            # Web framework
            "io.javalin:javalin:jar:4.3.0",

            # Jackson
            # "com.fasterxml.jackson.core:jackson-core:2.12.1",
            # "com.fasterxml.jackson.core:jackson-databind:2.12.1",
            # "com.fasterxml.jackson.core:jackson-annotations:2.12.1",
            # "com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.9.10",
            # "com.fasterxml.jackson.module:jackson-module-kotlin:2.9.10",
            # "com.fasterxml.jackson.dataformat:jackson-dataformat-xml:2.9.10",
            # "com.fasterxml.jackson.dataformat:jackson-dataformat-yaml:2.9.10",
            # "com.hubspot.jackson:jackson-datatype-protobuf:0.9.12",

            # Google HTTP
            "com.google.api-client:google-api-client:1.30.10",
            "com.google.http-client:google-http-client:1.36.0",

            # Fuel HTTP
            # "com.github.kittinunf.fuel:fuel:2.2.1",
            # "com.github.kittinunf.fuel:fuel-jackson:2.2.1",
            # "com.github.kittinunf.result:result:2.2.0",

            # Auth
            # "com.auth0:auth0:1.10.0",
            # "com.auth0:java-jwt:3.10.3",
            # "com.auth0:jwks-rsa:0.11.0",
            # "sh.ory.hydra:hydra-client:1.9.0",
            # "com.github.scribejava:scribejava-core:6.9.0",
            # "com.github.scribejava:scribejava-apis:6.9.0",

            # NATS
            # "io.nats:jnats:2.6.6",
            # "io.nats:java-nats-streaming:2.2.3",

            # MQTT
            # "org.eclipse.paho:org.eclipse.paho.client.mqttv3:1.2.5",

            # Config
            "com.sksamuel.hoplite:hoplite-core:1.4.1",
            "com.sksamuel.hoplite:hoplite-yaml:1.4.1",
            "com.sksamuel.hoplite:hoplite-hikaricp:1.4.1",

            # Cache
            # "com.github.ben-manes.caffeine:caffeine:2.9.0",

            # Crypto
            # "com.google.crypto.tink:tink:1.6.0",
            # "org.conscrypt:conscrypt-openjdk-uber:2.2.1",
            # "org.mindrot:jbcrypt:0.4",

            # from IO_GRPC_GRPC_JAVA_ARTIFACTS
            # "com.google.android:annotations:4.1.1.4",
            # "com.google.api.grpc:proto-google-common-protos:1.18.1",
            # "com.google.auth:google-auth-library-credentials:0.21.1",
            # "com.google.auth:google-auth-library-oauth2-http:0.21.1",
            # "com.google.code.findbugs:jsr305:3.0.2",
            # "com.google.code.gson:gson:jar:2.8.6",
            # "com.google.errorprone:error_prone_annotations:2.5.1",
            # "com.google.guava:failureaccess:1.0.1",
            # "com.google.j2objc:j2objc-annotations:1.3",
            # "com.squareup.okio:okio:2.10.0",
            # "io.netty:netty-buffer:4.1.59.Final",
            # "io.netty:netty-codec-http2:4.1.59.Final",
            # "io.netty:netty-codec-http:4.1.59.Final",
            # "io.netty:netty-codec-socks:4.1.51.Final",
            # "io.netty:netty-codec:4.1.59.Final",
            # "io.netty:netty-common:4.1.59.Final",
            # "io.netty:netty-handler-proxy:4.1.51.Final",
            # "io.netty:netty-handler:4.1.59.Final",
            # "io.netty:netty-resolver:4.1.59.Final",
            # "io.netty:netty-tcnative-boringssl-static:2.0.31.Final",
            # "io.netty:netty-transport-native-epoll:jar:linux-x86_64:4.1.59.Final",
            # "io.netty:netty-transport:4.1.59.Final",
            # "io.opencensus:opencensus-api:0.24.0",
            # "io.opencensus:opencensus-contrib-grpc-metrics:0.24.0",
            # "io.perfmark:perfmark-api:0.19.0",
            # "org.apache.tomcat:annotations-api:6.0.53",
            # "org.codehaus.mojo:animal-sniffer-annotations:1.18",

            # Additional Kotlin libs
            "com.squareup:kotlinpoet:1.5.0",  # for grpc-kotlin
        ],
        override_targets = dicts.add(
            IO_GRPC_GRPC_JAVA_OVERRIDE_TARGETS,
            {
                "org.jetbrains.kotlin:kotlin-reflect": "@com_github_jetbrains_kotlin//:kotlin-reflect",
                "org.jetbrains.kotlin:kotlin-stdlib-jdk7": "@com_github_jetbrains_kotlin//:kotlin-stdlib-jdk7",
                "org.jetbrains.kotlin:kotlin-stdlib-jdk8": "@com_github_jetbrains_kotlin//:kotlin-stdlib-jdk8",
                "org.jetbrains.kotlin:kotlin-stdlib": "@com_github_jetbrains_kotlin//:kotlin-stdlib",

                # Make sure there are no log4j dependencies included.
                "org.slf4j:slf4j-log4j12": "@maven//:ch_qos_logback_logback_core",
                "log4j:log4j": "@maven//:org_slf4j_log4j_over_slf4j",
            },
        ),
        repositories = [
            "https://repo1.maven.org/maven2/",
            "https://jcenter.bintray.com/",
            "https://maven.google.com",
            "https://repository.jboss.org/nexus/content/repositories/releases/",
            "https://repository.jboss.org",
        ],
        fetch_sources = True,
        maven_install_json = "//maven:maven_install.json",
        generate_compat_repositories = True,
        version_conflict_policy = "pinned",
    )
