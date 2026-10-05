# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.7/cavelon-darwin-arm64"
      sha256 "f5dcff65534b49e25717e4e32fa45bcd1e2cc2be0258a299675c034d5a327e05"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.7/cavelon-darwin-x64"
      sha256 "b4112cdb316cebfc1e916e418dc9285fc1684bc261a4e0f5eee42f8ad33a8539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.7/cavelon-linux-arm64"
      sha256 "e0c24e49f778f43fcd38a246fa415c3d935bc4758e8abec6f818bb5ef47adac8"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.7/cavelon-linux-x64"
      sha256 "a49ded95bc272cb0ef4d56daf42c5c15edfb7224e6da9f52971a55cda59b53dd"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
