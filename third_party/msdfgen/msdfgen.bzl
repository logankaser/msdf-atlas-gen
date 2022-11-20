load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# msdfgen v1.9.2
def msdfgen_workspace():
    http_archive(
        name = "msdfgen",
        #sha256 = "6d4d6640ca3121620995ee255945161821218752b551a1a180f4215f7d124d45",
        build_file = "//third_party/msdfgen:BUILD.bazel",
        strip_prefix = "msdfgen-1.9.2",
        urls = [
            "https://github.com/Chlumsky/msdfgen/archive/refs/tags/v1.9.2.tar.gz",
        ],
)
