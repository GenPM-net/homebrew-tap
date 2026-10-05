# Generado por scripts/release/package-channels.mjs (repo GenPM-net/genpm). No editar a mano.
class Genpm < Formula
  desc "Install architectures, not dependencies: inject code, AI rules and MCP config"
  homepage "https://genpm.net"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.4/genpm-darwin-arm64"
      sha256 "33147a66eb700001522ca435482cc50e958ac04237556b59a7560e0f3d24461d"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.4/genpm-darwin-x64"
      sha256 "543de61318228057e8d04a2ac113378cfdc8848dbce25aa3001c1cb20e834240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.4/genpm-linux-arm64"
      sha256 "cb1a500acb8707b89ee2c7cd1ec9dfadad06ca29db60ece8e1b878922517436a"
    end
    on_intel do
      url "https://github.com/GenPM-net/genpm-releases/releases/download/v0.1.4/genpm-linux-x64"
      sha256 "bc14155b669125cf0a17da2c09f812ebfad2b6ec0c08831d333d2c11e025d381"
    end
  end

  def install
    bin.install Dir["genpm-*"].first => "genpm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/genpm --version")
  end
end
