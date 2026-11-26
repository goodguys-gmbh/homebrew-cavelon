# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.20/cavelon-darwin-arm64"
      sha256 "a920c9995433341679fd53d31045eb9f9c6dd5c7af06c6c86eb2d1862f4aecba"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.20/cavelon-darwin-x64"
      sha256 "d1bacef8ac327d5eb91138569ab60b7e4ce1dcbf7116fc8b3815cf889a09e68a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.20/cavelon-linux-arm64"
      sha256 "95db7a46e352ac8b582f5a2f684ea9b20398a5dc457f6ca3eaa84c567b112f60"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.20/cavelon-linux-x64"
      sha256 "a2918c6dbe7673d13594be04f2b6a9d332fa41d1d047629a060d6a64ade18d44"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
