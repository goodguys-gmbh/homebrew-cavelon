# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.8/cavelon-darwin-arm64"
      sha256 "487ccce0700ebaaa862102d08fc03f1482564ed6a9bebc0105d27dd800a310a9"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.8/cavelon-darwin-x64"
      sha256 "f646dd61b9a5214a4ee831fa4f07fb8ce301901f419b033fb8342998339c2b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.8/cavelon-linux-arm64"
      sha256 "93b3ad39cd928ff1922d31bfd78830ba3ce7f7ee175c95b9d7c04120be048784"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.8/cavelon-linux-x64"
      sha256 "a5938da3e346607e20db98ea0a843a7721736745f44e1ee6f8ed0e2ceca4df42"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
