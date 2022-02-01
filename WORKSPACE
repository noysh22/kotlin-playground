load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

http_archive(
    name = "bazel_skylib",
    sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    urls = [
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# --- coverage-report -----------------------------------------------------------
coverage_sha = "83d0fa524e1f4b57c4de84be3f6c9b5bb9f0c300"

http_archive(
    name = "bazel_coverage_report",
    sha256 = "146bd4a714c1cfef8dc193b6aa84882063cd2a92dd15a19d4d3035ce2031459d",
    strip_prefix = "bazel-coverage-report-%s" % coverage_sha,
    type = "zip",
    urls = ["https://github.com/omnicate/bazel-coverage-report/archive/%s.zip" % coverage_sha],
)

load("@bazel_coverage_report//report:defs.bzl", "bazel_coverage_report_repositories")

bazel_coverage_report_repositories()

RULES_JVM_EXTERNAL_TAG = "4.1"

RULES_JVM_EXTERNAL_SHA = "f36441aa876c4f6427bfb2d1f2d723b48e9d930b62662bf723ddfb8fc80f0140"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

# --- Bazel buildtools -----------------------------------------------------------------------------

buildtools_verison = "4.0.1"

buildtools_sha = "932160d5694e688cb7a05ac38efba4b9a90470c75f39716d85fb1d2f95eec96d"

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = buildtools_sha,
    strip_prefix = "buildtools-%s" % buildtools_verison,
    url = "https://github.com/bazelbuild/buildtools/archive/%s.zip" % buildtools_verison,
)

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

# --- GRPC -----------------------------------------------------------------------------------------

http_archive(
    name = "rules_proto_grpc",
    sha256 = "28724736b7ff49a48cb4b2b8cfa373f89edfcb9e8e492a8d5ab60aa3459314c8",
    strip_prefix = "rules_proto_grpc-4.0.1",
    urls = ["https://github.com/rules-proto-grpc/rules_proto_grpc/archive/4.0.1.tar.gz"],
)

load("@rules_proto_grpc//:repositories.bzl", "rules_proto_grpc_repos", "rules_proto_grpc_toolchains")

rules_proto_grpc_toolchains()

rules_proto_grpc_repos()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

load("@rules_proto_grpc//java:repositories.bzl", rules_proto_grpc_java_repos = "java_repos")

rules_proto_grpc_java_repos()

# --- Packaging rules

http_archive(
    name = "rules_pkg",
    sha256 = "a89e203d3cf264e564fcb96b6e06dd70bc0557356eb48400ce4b5d97c2c3720d",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
        "https://github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
    ],
)

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

# --- docker

# http_archive(
#     name = "io_bazel_rules_docker",
#     sha256 = "59536e6ae64359b716ba9c46c39183403b01eabfbd57578e84398b4829ca499a",
#     strip_prefix = "rules_docker-0.22.0",
#     urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.22.0/rules_docker-v0.22.0.tar.gz"],
# )

# register_toolchains(
#     "@io_bazel_rules_docker//toolchains/docker:default_linux_toolchain",
#     "@io_bazel_rules_docker//toolchains/docker:default_windows_toolchain",
#     "@io_bazel_rules_docker//toolchains/docker:default_osx_toolchain",
# )

# load(
#     "@io_bazel_rules_docker//repositories:repositories.bzl",
#     container_repositories = "repositories",
# )

# container_repositories()

# load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

# container_deps()

# load(
#     "@io_bazel_rules_docker//container:container.bzl",
#     "container_pull",
# )
# load(
#     "@io_bazel_rules_docker//python:image.bzl",
#     _py_image_repos = "repositories",
# )

# _py_image_repos()

# container_pull(
#     name = "java-11-distroless",
#     digest = "sha256:449c1c57fac9560ee06cd50f8a3beeb9b8cc22f1ed128f068457f7607bcfcac6",
#     registry = "gcr.io",
#     repository = "distroless/java",
# )

# container_pull(
#     name = "java-11-alpine",
#     digest = "sha256:8e557dd84c4e86ce9f58e5d3c896d69959008df360d8aae9b6f57308bb5f21f5",
#     registry = "registry.wgtwo.com",
#     repository = "docker/adoptopenjdk/openjdk11",
# )

# container_pull(
#     name = "java-17-alpine",
#     digest = "sha256:186c0c1d0a1c53d26b3ad87d8227317f5ffae0de97267108e42f588ea19552ca",
#     registry = "registry.wgtwo.com",
#     repository = "docker/azul/zulu-openjdk-alpine",
# )

# load(
#     "@io_bazel_rules_docker//java:image.bzl",
#     _java_image_repos = "repositories",
# )

# _java_image_repos()

# --- github.com/bazelbuild/rules_kotlin ----------------------------------------------------------

rules_kotlin_version = "1.5.0-beta-4"

rules_kotlin_sha = "6cbd4e5768bdfae1598662e40272729ec9ece8b7bded8f0d2c81c8ff96dc139d"

http_archive(
    name = "io_bazel_rules_kotlin",
    sha256 = rules_kotlin_sha,
    urls = ["https://github.com/bazelbuild/rules_kotlin/releases/download/v%s/rules_kotlin_release.tgz" % rules_kotlin_version],
)

load("@io_bazel_rules_kotlin//kotlin:repositories.bzl", "kotlin_repositories")

kotlin_repositories()

register_toolchains("//:kotlin_toolchain")

# Download master or specific revisions
# http_archive(
#     name = "io_bazel_rules_kotlin_master",
#     strip_prefix = "rules_kotlin-master",
#     urls = ["https://github.com/bazelbuild/rules_kotlin/archive/refs/heads/master.zip"],
# )

# load("@io_bazel_rules_kotlin_master//src/main/starlark/release_archive:repository.bzl", "archive_repository")

# archive_repository(
#     name = "io_bazel_rules_kotlin",
#     source_repository_name = "io_bazel_rules_kotlin_master",
# )

# load("@io_bazel_rules_kotlin//kotlin:repositories.bzl", "kotlin_repositories")

# kotlin_repositories()

# load("@io_bazel_rules_kotlin//kotlin:core.bzl", "kt_register_toolchains")

# kt_register_toolchains()

# --- github.com/grpc/grpc-kotlin -----------------------------------------------------------------

http_archive(
    name = "com_github_grpc_grpc_kotlin",
    sha256 = "4214f689371a8aa57261bf8f7fef542eeb824dbaf7a80c768881250a7517821c",
    strip_prefix = "grpc-kotlin-1.2.0",
    urls = ["https://github.com/grpc/grpc-kotlin/archive/refs/tags/v1.2.0.tar.gz"],
)

load("@com_github_grpc_grpc_kotlin//:repositories.bzl", "grpc_kt_repositories")

grpc_kt_repositories()

# --- Java ---------------------------------------------------------------------------------------

load("//maven:maven.bzl", "maven_jars")

maven_jars()

load("@maven//:defs.bzl", "pinned_maven_install")

pinned_maven_install()

load("@maven//:compat.bzl", "compat_repositories")

compat_repositories()

load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")

grpc_java_repositories()