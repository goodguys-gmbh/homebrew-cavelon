# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.14/cavelon-darwin-arm64"
      sha256 "f7b9c7b62d98ef2f65ad39883e53797e2d53a2f8a7d15b2c745d427efe8d786c"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.14/cavelon-darwin-x64"
      sha256 "21ca3d671131db4f8767565fe41dede77e77c628c3eacf1a23c5e361f1a10d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.14/cavelon-linux-arm64"
      sha256 "3a7d87f2bf6b570f87ed07c7ce831a2cfeafb950f8de9ce9992088b1dfc7694c"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.14/cavelon-linux-x64"
      sha256 "fc56817e8337f94233e23c133819cc94c2f4e817fd8bc60a1e8bece8231fdb31"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
