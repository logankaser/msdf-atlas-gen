load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Skylib
http_archive(
    name = "bazel_skylib",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
    ],
    sha256 = "f7be3474d42aae265405a592bb7da8e171919d74c16f082a5457840f06054728",
)
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


# Hedron's Compile Commands Extractor for Bazel
# https://github.com/hedronvision/bazel-compile-commands-extractor
http_archive(
    name = "hedron_compile_commands",
    url = "https://github.com/hedronvision/bazel-compile-commands-extractor/archive/3bb6d78614d483ce0d0b370032b2566df8c63c14.tar.gz",
    strip_prefix = "bazel-compile-commands-extractor-3bb6d78614d483ce0d0b370032b2566df8c63c14",
    sha256 = "47d5dd031c048dbfb4c050062350c2d68ce9d76eae9c3ccbc32b59a841ccdf9a",
)
load("@hedron_compile_commands//:workspace_setup.bzl", "hedron_compile_commands_setup")
hedron_compile_commands_setup()

load("//third_party/freetype:freetype.bzl", "freetype_workspace")
freetype_workspace()

load("//third_party/zlib:zlib.bzl", "zlib_workspace")
zlib_workspace()

load("//third_party/msdfgen:msdfgen.bzl", "msdfgen_workspace")
msdfgen_workspace()

