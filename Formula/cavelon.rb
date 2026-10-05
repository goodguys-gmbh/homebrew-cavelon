# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.6/cavelon-darwin-arm64"
      sha256 "8e4d7c77396359446c4a93c6ce06da8d8afe64f20f25d354904631f889ecc70d"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.6/cavelon-darwin-x64"
      sha256 "b0347064304a210b310bdcdef60e70881779fa179c320ea218daa6851102aeef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.6/cavelon-linux-arm64"
      sha256 "cb912c879f51d01f1aa1a1fa22d0a4a7d5963215b73d3ad8c42bc44ff0242a7d"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.6/cavelon-linux-x64"
      sha256 "b9702e511b5e2d902dd80f8e4656a39b0bd14ffa4a78aa80710dd2a5cdcedd9d"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
