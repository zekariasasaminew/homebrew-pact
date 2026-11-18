class Pact < Formula
  desc "Run several AI coding agent CLIs in parallel on one repository"
  homepage "https://github.com/zekariasasaminew/pact"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.5.0/pact-aarch64-apple-darwin.tar.gz"
      sha256 "0ff7665dbf4ad73f5c018f58f3c9013e7213a4738af22784008dea0cdb648c70"
    else
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.5.0/pact-x86_64-apple-darwin.tar.gz"
      sha256 "165a8db2c26fdfa1d34cc996e2a1501d77fe1699fd798be30725d6dae9a1f17f"
    end
  end

  on_linux do
    url "https://github.com/zekariasasaminew/pact/releases/download/v0.5.0/pact-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7a67e771caa24c9bdec81580152f4f2cbda4c69eaed564481dee1c6ed549b530"
  end

  def install
    bin.install "pact"
  end

  test do
    assert_match "pact #{version}", shell_output("#{bin}/pact --version")
  end
end
