# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.0/cavelon-darwin-arm64"
      sha256 "64fba16aa448e41a586cde9750bbc8f5fd994bbc7a8c112edf770da312e8aea1"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.0/cavelon-darwin-x64"
      sha256 "9a249466234c826de39e8e87eb6daecc809b8808669c55e2e90837d7816aad7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.0/cavelon-linux-arm64"
      sha256 "c2b59fc37cc23b2060c03a83c505646719bf88415d9f4ab907420883cc75c763"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.0/cavelon-linux-x64"
      sha256 "ba41568df404cf99d8996aea459b047071d7b2901b53dc20e53bdbbc16523c58"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
