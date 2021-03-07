load("@build_bazel_rules_apple//apple:ios.bzl","ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Source",
    srcs = glob(["Source/**/*.swift"]),
    data = glob(["Assets.xcassets/**"]),
)

ios_application(
    name = "fructose-app",
    bundle_id = "com.who.is.ready.for.the.yoga.Fructose",
    minimum_os_version = "14.3",
    families = ["iphone", "ipad"],
    infoplists = [":Info.plist"],
    deps = [":Source"],
)
