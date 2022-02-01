load("@io_bazel_rules_kotlin//kotlin:jvm.bzl", "kt_jvm_binary", "kt_jvm_library", "kt_jvm_test")

kt_jvm_library(
    name = "lib",
    srcs = glob(["src/**/*.kt"]),
    visibility = ["//visibility:public"],
)

kt_jvm_binary(
    name = "wasm",
    srcs = glob(["src/**/*.kt"]),
    main_class = "playground.wasm.MainKt",
    visibility = ["//visibility:public"],
    deps = [
        ":lib",
    ],
)