# Written by the release workflow of https://github.com/goodguys-gmbh/cavelon-dev-kit (packaging/render.mjs).
class Cavelon < Formula
  desc "CLI and MCP server for building Cavelon solutions with a coding agent"
  homepage "https://github.com/goodguys-gmbh/cavelon-dev-kit"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.18/cavelon-darwin-arm64"
      sha256 "66bf170b15154f32fee0070a2411d1c3b76964d50dedf031e9760840326c0231"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.18/cavelon-darwin-x64"
      sha256 "db483e9f391301ef66a9637de7e62c346b2a5d05a511253498bf2899bd58e925"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.18/cavelon-linux-arm64"
      sha256 "2c6760a98578d8e6ca4dca6b47ab1b763e62a5eb112c64a4e2ed8c33124669ed"
    end
    on_intel do
      url "https://github.com/goodguys-gmbh/cavelon-dev-kit/releases/download/v0.1.18/cavelon-linux-x64"
      sha256 "e6333adfd6bf55ae2ef8c2f238f10481dd1ba5de3ac2f8447b806aee726d0716"
    end
  end

  def install
    bin.install Dir["cavelon-*"].first => "cavelon"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/cavelon --version").lines.first.strip
  end
end
