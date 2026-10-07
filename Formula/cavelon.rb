# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.13/cavelon-darwin-arm64"
      sha256 "ff44d9653b64509ee01277709c217bc80f8a7c1c061bcd279b1b783255f6c9a6"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.13/cavelon-darwin-x64"
      sha256 "2f27e6ba8d414841133b50a9a7fda9735cfb7f6bd3e085b15de2a6ea6e35e092"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.13/cavelon-linux-arm64"
      sha256 "4148972e8a02262500f34e089aa35fee3d57acc7293ffce4c496856a359596d2"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.13/cavelon-linux-x64"
      sha256 "729d9fc6eaad3b833cd5a6eed24432ee4af21ef5ffb60a31ead51ac8398aa177"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
