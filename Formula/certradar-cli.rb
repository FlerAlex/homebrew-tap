class CertradarCli < Formula
    desc "Certificate transparency search and SSL/TLS security analysis CLI"
    homepage "https://github.com/FlerAlex/certradar-cli"
    version "0.1.0"
    license "MIT"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.0/certradar-cli-macos-arm64.tar.gz"
        sha256 "REPLACE_WITH_ACTUAL_SHA256"
      else
        url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.0/certradar-cli-macos-x86_64.tar.gz"
        sha256 "REPLACE_WITH_ACTUAL_SHA256"
      end
    end

    on_linux do
      url "https://github.com/FlerAlex/certradar-cli/releases/download/v0.1.0/certradar-cli-linux-x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end

    def install
      bin.install "certradar-cli"
    end

    test do
      system "#{bin}/certradar-cli", "--version"
    end
  end
