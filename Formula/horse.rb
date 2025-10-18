class Horse < Formula
  desc "Display an animated ASCII art carousel of horsesbr"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "bab2b28d4b6467e1e061bff792b7897437a85f9b2b6267700a570d6cb47db7ae"

  bottle do
    root_url "https://github.com/notjosh/horse/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e93814cab0f5cdc5c3e5adc3e7672e8633cb4b0f63a8a1f913400425028e261b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "031d6d2d74b454ceeacbf4e2bb28fb254a1f4a1b578a1feaa12af2e20548ef7e"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "2ccf28f06f507588f14052c5216a6bc23adbe96252899a30eb8f47198070fdc3"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/horse.1"
  end

  test do
    assert_path_exists bin/"horse"
  end
end
