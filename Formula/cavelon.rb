# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.3/cavelon-darwin-arm64"
      sha256 "01025d7deb28c3a8ee5bb32473a3e38071fac66a1ccbfcb1f81a62decfe864c0"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.3/cavelon-darwin-x64"
      sha256 "e1773d360ba18f60e66c28703e3b4d313ba2e220b9242ec80618ebcc6acc5789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.3/cavelon-linux-arm64"
      sha256 "625c4196f13e26c2030f5e4e2cc2a79a3a927973eeaf3ef85f87784c7991efd1"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.3/cavelon-linux-x64"
      sha256 "70341fc221408a3219b20713d74b4308dd83647f1297f6b6f37622786245d350"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
