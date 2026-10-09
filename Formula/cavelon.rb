# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.1/cavelon-darwin-arm64"
      sha256 "6da2d1a97c120ab3fb0cef2ff5b80e6ea0b76ed48f2ce68fc3705dc568bd8e85"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.1/cavelon-darwin-x64"
      sha256 "c8e6ed54d753fbd843f27cc04f7eac65508e2caa44cde7ef7a8f0ef69b01da84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.1/cavelon-linux-arm64"
      sha256 "5944a42edf02a5ea2ad95c289f0128c4918688a35ca55ed607a6045efd9e4e07"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.1/cavelon-linux-x64"
      sha256 "3818d6ee24b7fb5b53c290e6c2417f676b2f621116aa753f1f3e144acbad6e90"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
