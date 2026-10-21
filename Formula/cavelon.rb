# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.9/cavelon-darwin-arm64"
      sha256 "40cb4404ffe1195fd6063cbc5edbb8d18fb3fd5928aae9f3bf55faac87517a9d"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.9/cavelon-darwin-x64"
      sha256 "e58450344cdf3dc3ad6eb4698486648f17ad964d4d916e86f5a57ad12eb76e45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.9/cavelon-linux-arm64"
      sha256 "eaf56c5b7324ff83c2b646d46e77b37ac50f3f1cf3e71757c1857fb3c27b7b59"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.9/cavelon-linux-x64"
      sha256 "4dc9874a863238f854b1103ee04cdbf83a1d7ceb649e1f475981b6b9dcb0a0e7"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
