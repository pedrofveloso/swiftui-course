load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_imessage_extension")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_sticker_pack_extension")
load("@build_bazel_rules_apple//apple:resources.bzl", "apple_resource_group")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = "Source",
    srcs = glob(["Source/**/*.swift"]),
    data = [
        ":MP4Resources",
        ":JSONResources",
        ":Assets",
    ]
)

apple_resource_group(
    name = "MP4Resources",
    resources = glob(["Resources/Video/*.mp4"]),
)

apple_resource_group(
    name = "JSONResources",
    resources = glob(["Resources/Data/*.json"]),
)

apple_resource_group(
    name = "Assets",
    resources = glob(["Assets.xcassets/**"]),
)

ios_application(
    name = "africa-app",
    bundle_id = "com.who.is.ready.for.the.yoga.Africa",
    minimum_os_version = "14.3",
    families = ["iphone", "ipad"],
    infoplists = [":Info.plist"],
    deps = ["Source"]
)
