# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.19/cavelon-darwin-arm64"
      sha256 "b219a9c6c68fc1f599fa2e16afdebb9f13af812ecf4f6f8832abe15ee07ba267"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.19/cavelon-darwin-x64"
      sha256 "9ffec68f3fa1b48cee05c4c74e5e40c0f412a00cc153e000f4906ca8cbb57c87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.19/cavelon-linux-arm64"
      sha256 "ed7284fbaf6fe92f7fd4f4cda214f31e711ba6b2a27956e032260a9ced011b64"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.19/cavelon-linux-x64"
      sha256 "033d6835c2ccecd73178d1ae1ac146ecc7c7267dcdd339a148574ff6bb1b902a"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
