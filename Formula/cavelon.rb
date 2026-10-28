# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.14/cavelon-darwin-arm64"
      sha256 "e38845dfcd3b73a7115eb9f36d1511160c32bcd21d4af341e425fd693dcdeca3"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.14/cavelon-darwin-x64"
      sha256 "7882c5fdf3f85ef26179db5155ef515c70c6a8381e81c833954ade0f7d33f012"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.14/cavelon-linux-arm64"
      sha256 "755a921162ea2fe25f8073b81cb88e4bc98128c88a624f5ac26b5aaf25099e4b"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.14/cavelon-linux-x64"
      sha256 "d594365b0830ca181f61c9fa374e0779ce98ed8f37589dd3a2a9699e3f91b796"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
