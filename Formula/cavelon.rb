# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.18/cavelon-darwin-arm64"
      sha256 "3d9a1a1d90efd33d03e4c0b002a36e7ce400a0c9db7212f42fc08d4c8e980ecf"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.18/cavelon-darwin-x64"
      sha256 "a9f3fc46ee9f7827c09ac01d3b1edadafc40450df92857a0eca9c8f68c586f62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.18/cavelon-linux-arm64"
      sha256 "87adffc4c659ad432b110763a547f96c8d7e58c343de61b0c88b9f8bfdc2c95a"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.18/cavelon-linux-x64"
      sha256 "387b6a66797f8fe2abe0cf28fe410ecc87ca083003f789a99b4f929471737f53"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
