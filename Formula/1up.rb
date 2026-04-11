class Oneup < Formula
  desc "Unified search substrate for source repositories"
  homepage "https://github.com/rp1-run/1up"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.5/1up-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "fc40c130f72407cd1bb4a2bdd4ce65b7bb40934955e6f10752ceb967c8c9edc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rp1-run/1up/releases/download/v0.1.5/1up-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6707119f9fb65bf69619563e5b999cf628cebabb4a74b09ba9ea93b64ba26c84"
    else
      url "https://github.com/rp1-run/1up/releases/download/v0.1.5/1up-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6527cf0ea5328f4d40667766299af5fb7a0e9705e1d2148afa252421f5c19425"
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
