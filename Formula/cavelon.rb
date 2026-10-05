# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.9/cavelon-darwin-arm64"
      sha256 "688dbdf048cac4185f352c63179a6637710eba90e26e4aa2c919bbf052e7b39a"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.9/cavelon-darwin-x64"
      sha256 "4ec9c8d80894a296b337a489b10b49fefb96df039df903f81dbb738a11a93b60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.9/cavelon-linux-arm64"
      sha256 "e6a18018fc8745fa62ea27b255885812c8dbc9ccb1ff912df6115e5eea16ef34"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.9/cavelon-linux-x64"
      sha256 "39354b134459e47bcd32711a48306db2b622e4a45861a9760d3fe4212ab2ad3b"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
