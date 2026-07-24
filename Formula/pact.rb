class Pact < Formula
  desc "Orchestrate multiple AI coding agent CLIs in parallel via git worktrees"
  homepage "https://github.com/zekariasasaminew/pact"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.3.0/pact-aarch64-apple-darwin.tar.gz"
      sha256 "e7688a56eb0c410af6defe651d49e27eca4f2dd04664a47cf11be00ceba829b8"
    else
      url "https://github.com/zekariasasaminew/pact/releases/download/v0.3.0/pact-x86_64-apple-darwin.tar.gz"
      sha256 "2c8b74cd07b0e21063a988a95896db8e6ba97d41d3d101ab1839419fcfcd50f1"
    end
  end

  on_linux do
    url "https://github.com/zekariasasaminew/pact/releases/download/v0.3.0/pact-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "019d8a2fde56950bfd0e81054d71deae3cf7cb465302de930a63988f108c9c06"
  end

  def install
    bin.install "pact"
  end

  test do
    assert_match "pact #{version}", shell_output("#{bin}/pact --version")
  end
end
