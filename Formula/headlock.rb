class Headlock < Formula
  desc "AI Agent Orchestration Platform - TUI Client"
  homepage "https://headlock.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-arm64.tar.gz"
      sha256 "99c40a9e76d4a955704b9ea72a18a6d8ac46e9a1cb3a7ba0315823f3f5e3d874"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-darwin-amd64.tar.gz"
      sha256 "447cb30690325723d95ef42e6f3b45bdf3f2b872182c4734910b1cbc4a244bf1"
    end
  end

  on_linux do
    on_arm do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-arm64.tar.gz"
      sha256 "1866c150387de98d9bc3ab0adee3df1c006a0379798168d7ccb29c7771255329"
    end
    on_intel do
      url "https://headlock.app/downloads/v0.1.0/headlock-linux-amd64.tar.gz"
      sha256 "bbc4f49bedb49160f90082332c6ac24a0bdc6153035892c78a4f59f416159a87"
    end
  end

  def install
    bin.install "headlock"
  end

  test do
    assert_match "headlock", shell_output("#{bin}/headlock --version 2>&1", 1)
  end
end
