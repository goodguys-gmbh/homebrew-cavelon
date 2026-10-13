# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.4/cavelon-darwin-arm64"
      sha256 "ba170298f8e545c7fde5c7c5c1462e641159767e8eac0daeb77454b4c2d0b335"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.4/cavelon-darwin-x64"
      sha256 "a3536099fc6ce1013a414686f95487fc9690a70e10a259a6f01fe150602a79d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.4/cavelon-linux-arm64"
      sha256 "324a065f3ec1b13d650995e56b0a88d76a4ea03f67cfb06f6f4f561c445c6e25"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.4/cavelon-linux-x64"
      sha256 "16fbac7551e9c5bf16409b6a8c35e8af42ab2ea1d55c6720c345d080fb81d1e2"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
