class Horse < Formula
  desc "Display an animated ASCII art carousel of horsesbr"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "dc5a9575053d6839d7c30d9895c580ef094c43850714687c3489290054bf3890"

  bottle do
    root_url "https://github.com/notjosh/horse/releases/download/v0.2.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ecc34eae4c783bbfa5d10f22655b3a735f5f75d24f70333b49687510b6ae0f53"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9c686cffdb76758f3c8a12883bd8c9371d69aac104958587acd3a3e1b9865bb2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "21b47eead0dca9c053ffd0a0c37a1f2da813e709ebda00ce7b744608a5def408"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/horse.1"
  end

  test do
    assert_predicate bin/"horse", :exist?
  end
end
