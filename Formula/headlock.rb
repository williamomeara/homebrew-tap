class Headlock < Formula
  desc "AI Agent Orchestration Platform - TUI Client"
  homepage "https://headlock.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-arm64.tar.gz"
      sha256 "92987cb3df83e63f1fd0f519a8a1924184be575c8ebb641a613d9c093450c97a"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-amd64.tar.gz"
      sha256 "5601c5be302fd47cab0b3932d6640647561b75ce36e0474e5d6d7e7883d2e0d2"
    end
  end

  on_linux do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-arm64.tar.gz"
      sha256 "b1d3073c36d0fbcd243a83017c48e29b2d87061ec210f94e330ecdb55be271ae"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-amd64.tar.gz"
      sha256 "f4189a68ff49e20239745becabff4482e613a183f7d6c7c5ac62eb1d1a974311"
    end
  end

  def install
    bin.install "headlock"
  end

  test do
    assert_match "headlock", shell_output("#{bin}/headlock --version 2>&1", 1)
  end
end
