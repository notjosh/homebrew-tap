class Horse < Formula
  desc "Display an animated ASCII art carousel of horses in your terminal"
  homepage "https://github.com/notjosh/horse"
  url "https://github.com/notjosh/horse/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "78ef10899c3d0fa03abe60b5631b4b9d20a7efd694391986ad44cb8c78aac690"

  bottle do
    root_url "https://github.com/notjosh/horse/releases/download/v0.2.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0556f86ebbe559220bfa7b67b77aef448fbbb286ea063d7f4d7d75be19b48451"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "37a21265a09b04039ec8a01aa74874d3f5d423426e6d81369da05ce3ab25c21b"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "3640f6473edd44958dd8f389d5638fe1e13bd9050a2eba608ca3386ca3921c89"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    man1.install "man/horse.1"
  end

  test do
    system "#{bin}/horse", "--version"
  end
end
