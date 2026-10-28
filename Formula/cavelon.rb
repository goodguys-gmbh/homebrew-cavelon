# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.13/cavelon-darwin-arm64"
      sha256 "b5b5b8503dfbe1aa4af2b409e1a3f69daeec55f0fc37ac13af96cb54ed5ae554"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.13/cavelon-darwin-x64"
      sha256 "32b60056415f6151ac213838525e0a8a72a1ac312767447d604b4fe54ca8ec27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.13/cavelon-linux-arm64"
      sha256 "7459c2f89a7c75decedec5ffcc70ab17b5dfd41c57b249480f26f52ef373f3e5"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.13/cavelon-linux-x64"
      sha256 "e422d36542aeb1b1a8387c5072e3b12e1061c3e10a1d910c7f11464edfc51271"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
