load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def msdfgen_workspace():
    http_archive(
        name = "msdfgen",
        sha256 = "94f7c1b174ed28b8d993aaa407ab08ac75f5e908513e427fc1c3f5b30ddd6f3f",
        build_file = "//third_party/msdfgen:BUILD.bazel",
        strip_prefix = "msdfgen-682381a03c5876cffcad256a59eab7efd83c3f4e",
        urls = [
            "https://github.com/Chlumsky/msdfgen/archive/682381a03c5876cffcad256a59eab7efd83c3f4e.tar.gz"
        ],
        patch_args = ["-p1"],
        patch_tool = "patch",
        patches = ["//third_party/msdfgen:config.patch"],
)
