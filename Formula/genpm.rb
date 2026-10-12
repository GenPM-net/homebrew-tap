# Generado por scripts/release/package-channels.mjs (repo GenPM-net/genpm). No editar a mano.
class Genpm < Formula
  desc "Install architectures, not dependencies: inject code, AI rules and MCP config"
  homepage "https://genpm.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.0/genpm-darwin-arm64"
      sha256 "b602e3704af6f0176fdb4ef72658e4da1f7779456e766fc9cf1e77832a7157e5"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.0/genpm-darwin-x64"
      sha256 "d253908bb7876eb7c24cac4081d9f89028939b1b45ce23f07b28ac903a194295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.0/genpm-linux-arm64"
      sha256 "032b1e603f1c2a647f2ee9661a337c52b24569d59d985b7b3b66bb099805b01f"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.2.0/genpm-linux-x64"
      sha256 "e46fed3cc2cf80840ebc5d7eb923e000469b8285a5182a7dd3ece1ae1268d052"
    end
  end

  def install
    bin.install Dir["genpm-*"].first => "genpm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genpm --version")
  end
end
