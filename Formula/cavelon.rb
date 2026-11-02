# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.16/cavelon-darwin-arm64"
      sha256 "a293dcbb92a8001cb33d0ad6a1a8619ba94472f762ffcf1321c677b42c3e36c1"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.16/cavelon-darwin-x64"
      sha256 "6f8f8bae1e0b730b26fe43457cb9efb47ef68b743cc85cc70ff7efdbb2855a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.16/cavelon-linux-arm64"
      sha256 "acfa9cd8fb00f8e984d677d207a7fcf4f70c2ea0f9d5a2d929aea44f751f410e"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.16/cavelon-linux-x64"
      sha256 "e30d7c87c32571b01722f79a3f32e2dbf7d3c0f591f7e61919384c4b0702789c"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
