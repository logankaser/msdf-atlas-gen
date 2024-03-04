load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# # msdfgen v1.9.2
# def msdfgen_workspace():
#     http_archive(
#         name = "msdfgen",
#         sha256 = "dd3880241bb38473ebefe16edfe43610bfb35c314cba12826eddd81775be267d",
#         build_file = "//third_party/msdfgen:BUILD.bazel",
#         strip_prefix = "msdfgen-1.9.2",
#         urls = [
#             "https://github.com/Chlumsky/msdfgen/archive/refs/tags/v1.9.2.tar.gz",
#         ],
# )

# msdfgen v1.9.2
def msdfgen_workspace():
    http_archive(
        name = "msdfgen",
        sha256 = "fad74e33274f591e72511bc0546189e7aec439f2a512ef1b2fde243554d457cb",
        build_file = "//third_party/msdfgen:BUILD.bazel",
        strip_prefix = "msdfgen-1.11",
        urls = [
            "https://github.com/Chlumsky/msdfgen/archive/refs/tags/v1.11.tar.gz",
        ],
        patch_args = ["-p1"],
        patch_tool = "patch",
        patches = ["//third_party/msdfgen:config.patch"],
)
