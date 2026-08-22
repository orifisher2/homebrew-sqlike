class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.2/sqlike-0.1.2-darwin-arm64.tar.gz"
      sha256 "d48b56850ccfc4b3c0a1659077c402d4347a3dfad9f49401da262a2212c81217"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.2/sqlike-0.1.2-darwin-x64.tar.gz"
      sha256 "aa9b3bb849e93a9859fc3a97f024263432e2defed4b76170a7c60f5707a9edb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.2/sqlike-0.1.2-linux-arm64.tar.gz"
      sha256 "a6333fa4470c31cfe44d1d6e276116556986061018a11d8e0bbbce486f3d781c"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.2/sqlike-0.1.2-linux-x64.tar.gz"
      sha256 "ca5bdab821a474a5476e05a1cd45fc975cc1906dfe8a6a2ff423fc828cc523ee"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
