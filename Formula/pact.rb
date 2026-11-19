class Pact < Formula
  desc "Run several AI coding agent CLIs in parallel on one repository"
  homepage "https://github.com/zekariasasaminew/pact"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.6.0/pact-aarch64-apple-darwin.tar.gz"
      sha256 "f91420779fe75d9f34a7139b0d0a219576b1ff544ed588ca2ca7236a35ff291b"
    else
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.6.0/pact-x86_64-apple-darwin.tar.gz"
      sha256 "3a1716e2737c614319bd8ba056ab6671d4bfcbc7cff2d891f28a982dc522c725"
    end
  end

  on_linux do
    url "https://github.com/zekariasasaminew/pact/releases/download/v0.6.0/pact-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ad853dda0c85eb9e7d8931b124174b0376af254ff5668ccde966d38d9dea99f6"
  end

  def install
    bin.install "pact"
  end

  test do
    assert_match "pact #{version}", shell_output("#{bin}/pact --version")
  end
end
