class AbyssLang < Formula
  desc "AbySS: The Programming Language"
  homepage "https://github.com/liebe-magi/AbySS"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/liebe-magi/AbySS/releases/download/0.0.2/abyss-aarch64-apple-darwin-0.0.2.zip"
      sha256 "5ee5196d050661d9dbeae292d7d0c776a02b2515451a61f2f16a2f4c06dfb9a5"
    else
      url "https://github.com/liebe-magi/AbySS/releases/download/0.0.2/abyss-x86_64-apple-darwin-0.0.2.zip"
      sha256 "0ca9be0e29118fcc98503fc023cec470aa39f5b8a5e2b140d455b7e263976ec1"
    end
  end

  def install
    bin.install "abyss"
  end

  test do
    system "#{bin}/abyss", "--version"
  end
end
