class Lets < Formula
  desc "Declarative CLI builder — define commands in KDL, get a CLI instantly"
  homepage "https://github.com/rapidity-rs/lets"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rapidity-rs/lets/releases/download/v0.1.0/lets-aarch64-apple-darwin.tar.gz"
      sha256 "b03e0c605d5941a0d5170139919c804d3d129cc37c9151447b8e5d9f04871f05"
    end
    on_intel do
      url "https://github.com/rapidity-rs/lets/releases/download/v0.1.0/lets-x86_64-apple-darwin.tar.gz"
      sha256 "6623e56d0c9c8c0568f8471b1aac79be3f9efe3774e2c65a1fc77bdb3654f639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rapidity-rs/lets/releases/download/v0.1.0/lets-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c468885b369a489b1a0053361fba198eac668bbf4651ba17910f737279d4acd8"
    end
    on_intel do
      url "https://github.com/rapidity-rs/lets/releases/download/v0.1.0/lets-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c78949ca277ef183e1f4e48a4530c8251061dd2d3b5ce4f6cda4864648f8ae46"
    end
  end

  def install
    bin.install "lets"
  end

  test do
    assert_match "lets #{version}", shell_output("#{bin}/lets --version")
  end
end
