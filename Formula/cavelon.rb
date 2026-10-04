# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.5/cavelon-darwin-arm64"
      sha256 "b8afafc4c58d8cc07921a096dc4459149a61ce7e13d43d8dbd964e102ae0298f"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.5/cavelon-darwin-x64"
      sha256 "e2f6190a744cca60fcc82e2b3ef26953d217ecd593bdfb4d4e69fe31e9323050"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.5/cavelon-linux-arm64"
      sha256 "5e0a1fd2fe445c35e76b0c6238d51499457e519a758a6003da6a15d2e474e317"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.5/cavelon-linux-x64"
      sha256 "bc6913d81d1d0c83f17230ab273eab01d06bffdd4e1eab0b68b852dc08fb7ecd"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
