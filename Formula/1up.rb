class Oneup < Formula
  desc "Unified search substrate for source repositories"
  homepage "https://github.com/rp1-run/1up"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.6/1up-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "afbfe36fca6962ea05595aeca0b85dd4626a7fffdb7363aaa039647163c87915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.6/1up-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77f04758e21786ee34a1bf00d3bdcc5b4879a17eb55bb4db78fd82b54232765e"
    else
      url "https://github.com/rp1-run/1up/releases/download/v0.1.6/1up-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21b8704de1658e811ed3f6c5e591c446beaea2ef948eae0bbbde7b4c8e273e75"
    end
  end

  def install
    bin.install "1up"
    prefix.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/1up --version")
  end
end
