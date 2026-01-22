class Headlock < Formula
  desc "AI Agent Orchestration Platform - TUI Client"
  homepage "https://headlock.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/williamomeara/headlock/releases/download/v0.1.0/headlock-darwin-arm64.tar.gz"
      sha256 "TODO_ADD_SHA256_HASH"
    end
    on_intel do
      url "https://github.com/williamomeara/headlock/releases/download/v0.1.0/headlock-darwin-amd64.tar.gz"
      sha256 "TODO_ADD_SHA256_HASH"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/williamomeara/headlock/releases/download/v0.1.0/headlock-linux-arm64.tar.gz"
      sha256 "TODO_ADD_SHA256_HASH"
    end
    on_intel do
      url "https://github.com/williamomeara/headlock/releases/download/v0.1.0/headlock-linux-amd64.tar.gz"
      sha256 "TODO_ADD_SHA256_HASH"
    end
  end

  def install
    bin.install "headlock"
  end

  test do
    assert_match "headlock", shell_output("#{bin}/headlock --version", 2)
  end
end
