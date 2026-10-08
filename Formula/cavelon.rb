# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.16/cavelon-darwin-arm64"
      sha256 "bc487e01b16dd3089d4d4beb4d34176166ac63266baab49e5f96cc5e4674fb31"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.16/cavelon-darwin-x64"
      sha256 "5855bffa9ffd3ede3b2c25cfcc027a835653fc2a990e784dba405aff0c95461d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.16/cavelon-linux-arm64"
      sha256 "a5f06e0e0cc4e2afff66b8be8de4788b55d2933d93ce306ccf18e47f3bd85ab0"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.16/cavelon-linux-x64"
      sha256 "19931760a27d6e5dc848aec26a0061870137badfadd165c06f489c9fb4c5029e"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
