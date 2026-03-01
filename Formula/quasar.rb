class Quasar < Formula
  desc "Astral themed agent orchestration system inspired by Gas Town"
  homepage "https://github.com/papapumpkin/quasar"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.3/quasar_0.0.3_darwin_amd64.tar.gz"
      sha256 "75a7572cd0a791ee5adfa0d6a062a7290fb2efa8d65c1d1edd560fdd8d0512ac"
    end

    if Hardware::CPU.arm?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.3/quasar_0.0.3_darwin_arm64.tar.gz"
      sha256 "9f4d9401b9136a57b8818de3bfb3e9f8f449741e8509afd2ab7f28e70e4cb22b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.3/quasar_0.0.3_linux_amd64.tar.gz"
      sha256 "0de9bf4091382de2e3b0ffc14d7fe655e930a92b5b721d6eb6e9d068631381df"
    end
  end

  def install
    bin.install "quasar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quasar version")
  end
end
