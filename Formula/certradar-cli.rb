class CertradarCli < Formula
    desc "Certificate transparency search and SSL/TLS security analysis CLI"
    homepage "https://github.com/FlerAlex/certradar-cli"
    version "0.1.0"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.0/certradar-cli-macos-arm64.tar.gz"
        sha256 "afbe65ca9657777c122d223271a5dcbc5a0a0cf376847b69a4cc084d59722f97"
      end
    end

    on_linux do
      url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.0/certradar-cli-linux-x86_64.tar.gz"
      sha256 "c4a87dfbb7ae250811e5ec40ef264fea3f6a868dd29d7e90093c5f513dbce702"
    end

    def install
      bin.install "certradar-cli"
    end

    test do
      system "#{bin}/certradar-cli", "--version"
    end
  end
