# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.17/cavelon-darwin-arm64"
      sha256 "dbc7bb38fb2cd7c9aad5c9bbab58bcbc81df1fc40727f60aa64e5b962e2e17b0"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.17/cavelon-darwin-x64"
      sha256 "e91366723b6504612509c9bd1304b215bc97842dc95b46205be10ab5b29e09ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.17/cavelon-linux-arm64"
      sha256 "9d836501829ac6d3eeb0f1b020294aad6ea47abc297c035631224151eb8fe13b"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.17/cavelon-linux-x64"
      sha256 "4fe52dbdfb2f8e33212ce0ff76c8f199628bc9561248b6c7b38adfe4840e48e3"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
