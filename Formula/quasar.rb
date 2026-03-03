class Quasar < Formula
  desc "Astral themed agent orchestration system inspired by Gas Town"
  homepage "https://github.com/papapumpkin/quasar"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.4/quasar_0.0.4_darwin_amd64.tar.gz"
      sha256 "855afed6478f67b94c857343fa1376e855759edfa0a08f3498b760c3e8ad622a"
    end

    if Hardware::CPU.arm?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.4/quasar_0.0.4_darwin_arm64.tar.gz"
      sha256 "73821f0b45ef7d0a7172b709a40eed0eb835f31120d39502ff6e0de62d75a1e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/papapumpkin/quasar/releases/download/v0.0.4/quasar_0.0.4_linux_amd64.tar.gz"
      sha256 "2e2acbbc9085c0aacd8754be070618fe6d40205e347bc400f298aca5db026d87"
    end
  end

  def install
    bin.install "quasar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quasar version")
  end
end
