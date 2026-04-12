class Bcli < Formula
  desc "CLI for Bear notes via CloudKit"
  homepage "https://github.com/mreider/better-bear"
  version "0.4.8"
  license "MIT"

  url "https://github.com/mreider/better-bear/releases/download/v#{version}/bcli-macos-universal.tar.gz"
  sha256 "cad698041d3b522855d5606d2bc5583712941f5473914c0686f762d00b6d07d3"

  depends_on :macos

  def install
    bin.install "bcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bcli --version")
  end
end
