# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.6/cavelon-darwin-arm64"
      sha256 "6dd95442b5dccc8937e80bb91563b7a0f7ccac320fc4ebb0eee162f288262914"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.6/cavelon-darwin-x64"
      sha256 "ec8cd18da3caaa00fdf07ec64be9b3a518f62109e08852219de2244269565c37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.6/cavelon-linux-arm64"
      sha256 "573714f1a5c9e2f893b908539af92295ed065b7d9c71444a9f624e7e28ad272f"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.6/cavelon-linux-x64"
      sha256 "15870c96920af227c013e4b0b21a885c33f60658db535a5e7f9fdfae36630423"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
