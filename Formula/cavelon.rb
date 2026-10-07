# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.12/cavelon-darwin-arm64"
      sha256 "2802377fcd9b8583f1e64647afd2114ad7a6bfec312d0826bf9e95f5f8ccc58e"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.12/cavelon-darwin-x64"
      sha256 "2b5f352762933e5ab52b97877bfee3aeaf73b556e5ece85e77c477617fa1eb7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.12/cavelon-linux-arm64"
      sha256 "23ef256d61ffef849ee7a36ba84356a0d9ff7cace828bc9771a668f90dc01423"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.12/cavelon-linux-x64"
      sha256 "d1c16efa8e04f1c6e0cf43251dd19f95051cec9b144dcc977663c5544323e468"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
