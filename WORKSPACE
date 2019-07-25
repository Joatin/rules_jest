workspace(
    name = "rules_jest",
    managed_directories = {"@npm": ["node_modules"]},
)

load("@build_bazel_rules_nodejs//:defs.bzl", "yarn_install")

yarn_install(
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)