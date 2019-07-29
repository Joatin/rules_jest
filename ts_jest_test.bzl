
def _impl(ctx):
    ctx.actions.run(
        outputs = [],
        executable = ctx.executable.jest,
        arguments = []
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
