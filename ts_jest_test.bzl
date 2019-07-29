load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_test")


def _impl(ctx):
    nodejs_test(
       name = ctx.var.name,
       data = ctx.files.srcs,
       entry_point = "@npm//:node_modules/jest/bin/jest.js",
       node_modules = "@npm//:node_modules",
       install_source_map_support = False
    )

ts_jest_test = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(
            allow_files = True,
            allow_empty = False,
            mandatory = True
        ),
        "jest": attr.label(
            default = Label("@npm//jest/bin:jest"),
            cfg = "host",
            executable = True,
        )
    },
    test = True,
)
