class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.2.0/sqlike-0.2.0-darwin-arm64.tar.gz"
      sha256 "8f16be2a6ac421481df86a7c3d511543f54020bc1d72ec17853b60a87c360e70"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.2.0/sqlike-0.2.0-darwin-x64.tar.gz"
      sha256 "577eadaad34766e8597666e3f8c6442acaf54a035c497111a7632f7a64a02727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.2.0/sqlike-0.2.0-linux-arm64.tar.gz"
      sha256 "6b4e1f945b0ac795f603eaf645e79fe2a92c564f7304cf6390ebee8e560c5061"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.2.0/sqlike-0.2.0-linux-x64.tar.gz"
      sha256 "5ad4c0690be10233894999f3be88367077864c2fa1c5df27172aef5074eb1ac1"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
