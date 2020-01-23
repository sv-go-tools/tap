# This file was generated by GoReleaser. DO NOT EDIT.
class Bumptag < Formula
  desc "bumptag is a tool to increment a version and to create a git tag with an annotation."
  homepage "https://github.com/sv-tools/bumptag"
  version "1.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sv-tools/bumptag/releases/download/v1.3.2/bumptag-v1.3.2-darwin-amd64.tar.gz"
    sha256 "f3f21bce4237b02daa19dc3c3a145febc4275dd26306afe8945c3418ffdd0626"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sv-tools/bumptag/releases/download/v1.3.2/bumptag-v1.3.2-linux-amd64.tar.gz"
      sha256 "9008c5d3f20e9bb2caeca1d2474f61fb214c6c2d38560383c802e128b742a5b9"
    end
  end

  def install
    bin.install "bumptag"
  end

  test do
    assert_equal `#{bin}/bumptag --version`, "v#{version}"
  end
end
