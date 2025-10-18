class Horse < Formula
  desc "Display an animated ASCII art carousel of horsesbr"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "443990851a3dbb4eabd916c30bce9b80b1d90027d406a08c66b01b5fa2b12f8e"

  bottle do
    root_url "https://github.com/notjosh/horse/releases/download/v0.3.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "86e8b5368963efe3ba7857be8858e83d31dcb89395bc476df15cf767b15f09e0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "a6aba9bb411aa4f46ba3a04fd8a9f51f44ac7e75006d576725bdecfbf96a0475"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "fe9638354e9cd2bc3c941cd40497a919b4138b935f4a176a305cfaa9e1098b18"
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
