# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.12/cavelon-darwin-arm64"
      sha256 "0d0d6f70771c1b0d315eca53837ea3469ed16c280b98695ffa612b0d5636e585"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.12/cavelon-darwin-x64"
      sha256 "4740bc442e97035f52993e7830da34fdfee5d1c913e319e8dc0d5a2c6326fee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.12/cavelon-linux-arm64"
      sha256 "da9e406e1214d01c778e63e24cdaf669aac6c27c7ef56dbdf19968e0e4ee9521"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.12/cavelon-linux-x64"
      sha256 "5393ebe7ee8937adb4c73ab73b166cc3c950f14e8ae18887fc13068e80bf77e5"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
