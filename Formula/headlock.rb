class Headlock < Formula
  desc "AI Agent Orchestration Platform - TUI Client"
  homepage "https://headlock.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-arm64.tar.gz"
      sha256 "2fb4748cbc2d2b63129c3b60cc50bcfec64fce2477750694b95946d02b390c04"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-amd64.tar.gz"
      sha256 "6206f92caafcbcfac97660782a087c38234792e3d5608b77963a43a16ec38e07"
    end
  end

  on_linux do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-arm64.tar.gz"
      sha256 "f31bdb7a36471ec9c0b8730f0218efeab0a580f46e32a4deffb2c110bbbae518"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-amd64.tar.gz"
      sha256 "d8efb22ec49dcad4d0a8e4dfc0ef9c196b2d30b63d980278d2057184e9a321c5"
    end
  end

  def install
    bin.install "headlock"
  end

  test do
    assert_match "headlock", shell_output("#{bin}/headlock --version 2>&1", 1)
  end
end
