load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def freetype_workspace():
    http_archive(
        name = "freetype",
        build_file = "//third_party/freetype:BUILD.bazel",
        sha256 = "33a28fabac471891d0523033e99c0005b95e5618dc8ffa7fa47f9dadcacb1c9b",
        strip_prefix = "freetype-2.8",
        urls = [
            "https://mirror.bazel.build/download.savannah.gnu.org/releases/freetype/freetype-2.8.tar.gz",
            "http://download.savannah.gnu.org/releases/freetype/freetype-2.8.tar.gz",
        ],
    )
