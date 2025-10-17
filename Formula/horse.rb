class Horse < Formula
  desc "Display an animated ASCII art carousel of horsesbr"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9567dfcba7bb6fd1b95271be95a754391e71ff1a0f97c5248db2d28b144b28c9"

  bottle do
    root_url "https://github.com/notjosh/horse/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ca5323e6dc3e43df59c5ae94d8552e5e1cf7205099c170d2a46e1432050a472f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f4c83f7e5ebfe1a8a271dd6146647910eeb5b05f3b6e02c97be26e9ad8ec0ba0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "c16b70bbdfdf58c51fd43c28fe83e1eb92192daf81ae3e1d5dd6a6270f8d638c"
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
