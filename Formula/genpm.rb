# Generado por scripts/release/package-channels.mjs (repo GenPM-net/genpm). No editar a mano.
class Genpm < Formula
  desc "Install architectures, not dependencies: inject code, AI rules and MCP config"
  homepage "https://genpm.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.3/genpm-darwin-arm64"
      sha256 "763c40d9dd0a89285496264857c3761cdace52c8deedf108149d2746724234d5"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.3/genpm-darwin-x64"
      sha256 "06fff52819eada8cdeb185fd51f945b6100b3277d42790c5c7d987785c8a283e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.3/genpm-linux-arm64"
      sha256 "a357ce725e7d3d81acd9e1f59631a986c3f8736b04635f991b29d17a7def3728"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.3/genpm-linux-x64"
      sha256 "6a6f1b33c389b737dd44ac95e71c1830cea2057657cd4512a000c4c6974395ed"
    end
  end

  def install
    bin.install Dir["genpm-*"].first => "genpm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genpm --version")
  end
end
