
def _impl(ctx):
    ctx.actions.run(
        executable = ctx.attr.jest,
        arguments = []
    )

ts_jest_test = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(allow_files = True),
        "jest": attr.label(default = "@npm//jest/bin:jest")
    },
    test = True,
)
