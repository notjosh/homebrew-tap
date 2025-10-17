class Horse < Formula
  desc "Display an animated ASCII art carousel of horses"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "20e1b63229e3dd5224cb0e25fa04cd4e4d69454d1f3ed094783886900807cfdd"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/horse.1"
  end

  test do
    assert_predicate bin/"horse", :exist?
  end
end
