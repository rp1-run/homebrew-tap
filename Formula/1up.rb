class Oneup < Formula
  desc "Unified search substrate for source repositories"
  homepage "https://github.com/rp1-run/1up"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.8/1up-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "9911e55830cb2acaff9c2abe622485dfd590ebcfb660dc68c4c645e7e29ee4e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.8/1up-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5a862684cc070726c47f34134263a4167815b66e93c5b8953113d5dcf831f4e"
    else
      url "https://github.com/rp1-run/1up/releases/download/v0.1.8/1up-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db38d68dd7a7e56108beac409eab0e6f9a4d1f9073909d66cf60a4a309ce6056"
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
