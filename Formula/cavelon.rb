# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.7/cavelon-darwin-arm64"
      sha256 "56e521bf93ff5f23df21c374978845716eff657df27792202a214495a7fff1bf"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.7/cavelon-darwin-x64"
      sha256 "579b593b46d05a963cc8a8de7c3b516d42772fde05f1a9d00921b7401621acd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.7/cavelon-linux-arm64"
      sha256 "0ce663d3e94dedc8dd00ce33b6ffc425537d9ef3d7f3b79e28a09f92f3bfb4b6"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.7/cavelon-linux-x64"
      sha256 "6a39b88d102a558a8d2a5cd7c8ca81288212093c1c4a54ab68d2636b3cebd81a"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
