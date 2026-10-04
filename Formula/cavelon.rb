# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.4/cavelon-darwin-arm64"
      sha256 "d1710edf71b3a9e654543b26e395aeafad516ac956191d2cb4bd18f8d960875a"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.4/cavelon-darwin-x64"
      sha256 "956611c804044f3524916d7b70c80320a2c3924d816a208b11ed29641b702e7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.4/cavelon-linux-arm64"
      sha256 "9d7b3a7dc200773ce3612b908fe8a6d3b5acf0712839fdb8efad0d7a1b1be114"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.4/cavelon-linux-x64"
      sha256 "5c8ab386f74f0e9d5c10e8e187b909dca4c4ab2ac8db75c0af2feed3a94725af"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
