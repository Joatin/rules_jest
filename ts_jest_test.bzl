
load("@rules_jest//:ts_jest_test.bzl", "ts_jest_test")

def _impl(ctx):
    nodejs_test(
       name = ctx.attr.name,
       data = ctx.files.srcs,
       entry_point = "@npm//:node_modules/jest/bin/jest.js",
       node_modules = "@npm//:node_modules",
       install_source_map_support = False
    )

ts_jest_test = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(allow_files = True),
        "jest": attr.label(
            default = Label("@npm//jest/bin:jest"),
            cfg = "host",
            executable = True,
        )
    },
    test = True,
)
