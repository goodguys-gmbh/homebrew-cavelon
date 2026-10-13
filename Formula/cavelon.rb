# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.5/cavelon-darwin-arm64"
      sha256 "b93fa498643015c770efba92e9fe0106f9e243b0aaaf1402d620e47aa85895cb"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.5/cavelon-darwin-x64"
      sha256 "92c1cb14e82fca22427e6de80b26bd7b02abbd6bc7bedef9a15c530c932c0d4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.5/cavelon-linux-arm64"
      sha256 "06ab7ed46a8962344a833309e5f6719f3aeb39ece56ee5bf9ceb7aea21b14528"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.2.5/cavelon-linux-x64"
      sha256 "56e87127aa060d4f0c0c33904642fed3311f72dc8f5b8b0a1a4c33ceb1b592c5"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
