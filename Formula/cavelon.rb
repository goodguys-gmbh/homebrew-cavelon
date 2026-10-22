# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.11/cavelon-darwin-arm64"
      sha256 "755edbf77ba71bfc09ad3c98ae63359526a4b572c2283155c97ac06647d6a2d9"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.11/cavelon-darwin-x64"
      sha256 "20048705eedb281cfb09ab74fe48ac2b213b7d15dd9e3c7fca0b2842a7dcb16c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.11/cavelon-linux-arm64"
      sha256 "a44f7113dfeed1a57da27537c02a993ab18a16da2a09e17aa464041ce2af1d7b"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.11/cavelon-linux-x64"
      sha256 "a425e01d76d10dc9d8439930993b1093dacd30d5b0cd19b80d976d04bb113642"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
