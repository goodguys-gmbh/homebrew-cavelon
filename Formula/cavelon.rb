# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.10/cavelon-darwin-arm64"
      sha256 "d03a7f6146f78136d9ba2b8b27a6fbbc76b5507d3acb8f889f07b8688b4d620c"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.10/cavelon-darwin-x64"
      sha256 "4bd1d9127effe6b497c239bfefcf1ae52188ac3adaa3c9b57a7c9535a36dede9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.10/cavelon-linux-arm64"
      sha256 "b133c9b04aeb5deebb6b5ef85fb29f10fa9a3bf71e275da4bfec07d604b5c6d3"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.10/cavelon-linux-x64"
      sha256 "20124524dade07eeeafa0c355334448bd3f8518a13ebca9760819242d2be2cb9"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
