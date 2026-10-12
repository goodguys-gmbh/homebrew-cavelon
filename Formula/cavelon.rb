# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.2/cavelon-darwin-arm64"
      sha256 "773ee83ba2fb8245d36087708df16a9dc1c8cf8060a99f5b34364f678a8a264e"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.2/cavelon-darwin-x64"
      sha256 "a5eb18fbef4be3421ddee2fcd559d90feb4380e3ae524408d92fccb422d4f6b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.2/cavelon-linux-arm64"
      sha256 "486ccf612dbdb20efeda9eece55857a7b29d64617c4b5fd1acf734d49be78a00"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.2/cavelon-linux-x64"
      sha256 "522ff0aba475513b40cf7b74f14e52dbbdd5f215f9319e13019f492fd07a1725"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
