class Headlock < Formula
  desc "AI Agent Orchestration Platform - TUI Client"
  homepage "https://headlock.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-arm64.tar.gz"
      sha256 "36f037497f75da940b8b9e2f872d098d05b3709510b4f96ffb7db0b7c37d880a"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-amd64.tar.gz"
      sha256 "f6df2af4c3adc6039c6d95fa0af1228c1893169f918fbbf464d8a9e2b0b67d09"
    end
  end

  on_linux do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-arm64.tar.gz"
      sha256 "9742c617b8011747dd10aa770098733fcb98b61f0006e3ee4668f4cf53359dbc"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-amd64.tar.gz"
      sha256 "708fc0638207be9ed36ae5e61c4d8adc65d5ec68b7022295f49577b739f91459"
    end
  end

  def install
    bin.install "headlock"
    bin.install "headlock-watch"
  end

  test do
    assert_match "headlock", shell_output("#{bin}/headlock --version 2>&1", 1)
  end
end
