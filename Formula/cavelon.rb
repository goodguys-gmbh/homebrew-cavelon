# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.11/cavelon-darwin-arm64"
      sha256 "9f87143ed69fbef70abdae9e29f390d5cf9ce8285d8af67f9cad89ba6602f154"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.11/cavelon-darwin-x64"
      sha256 "7013efdf89d79d09febab914a8f3a0f21b05b329e14a177d1b1586af7e722b57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.11/cavelon-linux-arm64"
      sha256 "569ebf0da06eb680ecbdd9c4f8110caa0b02f5b111deff3443fc53a131177698"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.11/cavelon-linux-x64"
      sha256 "9f3b235de2e59561662a7ec1ff41fb7c7cb60753e961471ffdfff4209d91fcc0"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
