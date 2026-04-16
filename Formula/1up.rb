class Oneup < Formula
  desc "Unified search substrate for source repositories"
  homepage "https://github.com/rp1-run/1up"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.7/1up-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "abd55d02f7e000eb3f864c10c86271371f7a81648b5dc2521edf8bab589fbd57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.7/1up-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e68330cb2df95974bc39e735b4c66fca6906f7b7b7d5d4aae3e90ec45d59ae30"
    else
      url "https://github.com/rp1-run/1up/releases/download/v0.1.7/1up-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3cd2aca5fc6338b3e133042b58f24355891dabbb2b76c15e9b8ed2d5dd9d3b9d"
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
