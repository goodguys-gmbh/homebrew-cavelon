# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.15/cavelon-darwin-arm64"
      sha256 "5c6eee444197769eaddd7864845866393a96a2abec95ea0647cd8e7d1c6f54af"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.15/cavelon-darwin-x64"
      sha256 "9ea7afd4569186a682a7bdf791b56788ad5b5bf5a5d75000dec1609f55ed601b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.15/cavelon-linux-arm64"
      sha256 "23d5907ce152bcf05ce042e34a5fcd0777a39b90692d3b2188ee37480ce497d3"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.15/cavelon-linux-x64"
      sha256 "9b31ea12d4457b84d333a42f3cc1fcb7089a716d57303753390263d097790a67"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
