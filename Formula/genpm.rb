# Generado por scripts/release/package-channels.mjs (repo GenPM-net/genpm). No editar a mano.
class Genpm < Formula
  desc "Install architectures, not dependencies: inject code, AI rules and MCP config"
  homepage "https://genpm.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.1/genpm-darwin-arm64"
      sha256 "3431051983d7ed5b0ac72c2b5044aca2541d4a971c84fe4aebbc6334c58bffa4"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.1/genpm-darwin-x64"
      sha256 "1883fe3c51d5605781ac5cc6930cdd1b85352b8b0856a6e29fc71afbc323fa74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.1/genpm-linux-arm64"
      sha256 "1241aaca9b054bde55cdf72ed1eec525648b6d75c6c6225fd3c6d7104b51e965"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.1/genpm-linux-x64"
      sha256 "3080e72ac8d92f034abe57d99c9855f73628d13c0fd3564ec983f0d96d072c90"
    end
  end

  def install
    bin.install Dir["genpm-*"].first => "genpm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genpm --version")
  end
end
