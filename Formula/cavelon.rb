# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.15/cavelon-darwin-arm64"
      sha256 "709c4036a3870115d136885f4b65146f5c4b3065015a501ab9efca01188b7433"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.15/cavelon-darwin-x64"
      sha256 "6ebd11200d646af5c976db104d57af712004851e9c97cbe9902d39e6ef6b1ac2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.15/cavelon-linux-arm64"
      sha256 "c236b0ce7016e5a79f0dc9df74ddf2bbe7e4e8a84bc6b3526eaa62f9c5e90b58"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.15/cavelon-linux-x64"
      sha256 "101c3c8aa36cb55b57eda68df5f1c7a10442df9d9c008464dbbc6cd2163615f9"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
