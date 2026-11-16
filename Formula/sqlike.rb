class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.4/sqlike-0.4.4-darwin-arm64.tar.gz"
      sha256 "6e8fea183d0f3b1bd7d77630af46f0fac6094bd80e8f149448ebb58b38b49f30"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.4/sqlike-0.4.4-darwin-x64.tar.gz"
      sha256 "48b6b6f7b489febb345803033fa287b6d803b5d1a5855197f8c4c62bbb716b19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.4/sqlike-0.4.4-linux-arm64.tar.gz"
      sha256 "35a89a5b86376a65d7cc4e24173585af8c5d6d7abd352fcf438b29833fbc8796"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.4/sqlike-0.4.4-linux-x64.tar.gz"
      sha256 "bce227f95828ffc684e7c6dc003a1fcb699f96d97f2c97a36f0e0f5a70c5a952"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
