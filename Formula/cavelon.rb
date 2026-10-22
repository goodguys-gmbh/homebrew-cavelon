# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.10/cavelon-darwin-arm64"
      sha256 "320ad8e3483b69813381743046abeb2198b9402baaef64df289b5514fd557f79"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.10/cavelon-darwin-x64"
      sha256 "6b0b97422779ee3758b8a0fae802a5e607dbb799af3aea857b609fe1d53bb903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.10/cavelon-linux-arm64"
      sha256 "864b6bdfa88940cd2b969ab6ebf19d419db4c998edf129e43287f5fa00eac7d1"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.10/cavelon-linux-x64"
      sha256 "6d01f437b0c114311d14a089b8cc0a790e929f6acaa3d95777cdee5e7c8b8f6a"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
