class CertradarCli < Formula
  desc "Certificate transparency search and SSL/TLS security analysis CLI"
  homepage "https://github.com/FlerAlex/certradar-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.2/certradar-cli-macos-arm64.tar.gz"
      sha256 "ea5dd7134d25d1a33ebdab8327d3136d856f8470146a2d0b4c336293b2f32b1e"
    end
  end

  on_linux do
    url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.2/certradar-cli-linux-x86_64.tar.gz"
    sha256 "dd32adbb98ee40c054f72bd4b71b17a6461a2ceadec124f15ffde3a41346779e"
  end

  def install
    bin.install "certradar-cli"
  end

  test do
    system "\#{bin}/certradar-cli", "--version"
  end
end
