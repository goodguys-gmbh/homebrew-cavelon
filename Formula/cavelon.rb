# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.8/cavelon-darwin-arm64"
      sha256 "5b79f9215350f4991ee832796c5ed48904bddf49ab18662ae326e5c3749bf722"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.8/cavelon-darwin-x64"
      sha256 "d2bf17ded538da343b99880cc43cdaabc87fc82ddd072097309442ec4972c182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.8/cavelon-linux-arm64"
      sha256 "f08660e85487f55586ced37440cf7f706557fc53c2f309a0f6fbe2f9fdfa9ff0"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.8/cavelon-linux-x64"
      sha256 "e7c7b933b36d3c9b932b205ccf96f04e8e427c533a468a4271576cd74da94d2c"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
