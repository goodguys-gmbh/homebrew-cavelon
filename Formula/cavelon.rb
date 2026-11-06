# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.17/cavelon-darwin-arm64"
      sha256 "64ad18d5e606c9ff36894a2992253b2e159b47f3ee4c571d54dbe44f5aa7fad4"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.17/cavelon-darwin-x64"
      sha256 "992a751c16c55ec277a318db495ae486e3efef03fa87bef78fd265510942b692"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.17/cavelon-linux-arm64"
      sha256 "6245ee576820e934aedc11c12789cdc25fa3c62527b73b69b490448d8ec27c12"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.17/cavelon-linux-x64"
      sha256 "84f53c9effeff6074b9004ccadae628089d1e467825eb4eacb07080992bfac0f"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
