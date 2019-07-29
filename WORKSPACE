workspace(
    name = "rules_jest",
    managed_directories = {"@npm": ["node_modules"]},
)

# Load our dependencies
load("//:package.bzl", "rules_jest_dev_dependencies")

rules_jest_dev_dependencies()

load("@build_bazel_rules_nodejs//:defs.bzl", "yarn_install")

yarn_install(
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)

load("@npm//:install_bazel_dependencies.bzl", "install_bazel_dependencies")
install_bazel_dependencies()