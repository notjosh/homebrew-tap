class Horse < Formula
  desc "Display an animated ASCII art carousel of horses"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "df81cd4db1c41b83f4d88c8b13e880fa93f744968ac881445524c3b0b2510244"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/horse.1"
  end

  test do
    assert_predicate bin/"horse", :exist?
  end
end
