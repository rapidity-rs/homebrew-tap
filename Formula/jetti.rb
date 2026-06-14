class Jetti < Formula
  desc "A fast, cross-platform tool for organizing git repositories"
  homepage "https://github.com/rapidity-rs/jetti"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rapidity-rs/jetti/releases/download/v0.2.0/jetti-aarch64-apple-darwin.tar.gz"
      sha256 "1f832a89d65eb9ee5e3df7d3b0046bba3ca1ce9e4c086afd738d417529e9c939"
    end
    on_intel do
      url "https://github.com/rapidity-rs/jetti/releases/download/v0.2.0/jetti-x86_64-apple-darwin.tar.gz"
      sha256 "3ebb1cfaaf304f6695431aed7af9c1379e9fe5209c47462f1e1437cd4c43a26a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rapidity-rs/jetti/releases/download/v0.2.0/jetti-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "506a79c3521ec12fe6acb64a92d3e55b245173b5efb16014959e9e55e384b01f"
    end
    on_intel do
      url "https://github.com/rapidity-rs/jetti/releases/download/v0.2.0/jetti-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aabe2962dfacf34dd00a0caff0e529df369e9f94495c4269f76e13288e5a4664"
    end
  end

  def install
    bin.install "jetti"
    generate_completions_from_executable(bin/"jetti", "completions", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match "jetti #{version}", shell_output("#{bin}/jetti --version")
  end
end
