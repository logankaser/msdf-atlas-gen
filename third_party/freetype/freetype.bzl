load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def freetype_workspace():
    http_archive(
        name = "freetype",
        build_file = "//third_party/freetype:BUILD.bazel",
        sha256 = "1ac27e16c134a7f2ccea177faba19801131116fd682efc1f5737037c5db224b5",
        strip_prefix = "freetype-2.13.2",
        urls = [
            "https://mirror.bazel.build/download.savannah.gnu.org/releases/freetype/freetype-2.13.2.tar.gz",
            "https://download.savannah.gnu.org/releases/freetype/freetype-2.13.2.tar.gz"
        ],
    )
