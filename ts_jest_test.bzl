load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_test")


def ts_jest_test(
        name,
        srcs = [],
        data = [],
        tags = [],
        jest = "@npm//:node_modules/jest/bin/jest.js",
        node_modules = "@npm//:node_modules",
        **kwargs):

    nodejs_test(
        name = name,
        data = data,
        entry_point = jest,
        testonly = 1,
        expected_exit_code = "1",
        tags = tags,
        node_modules = node_modules,
        **kwargs
    )
