class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.3/sqlike-0.4.3-darwin-arm64.tar.gz"
      sha256 "a6ad119c8ab8d611447d4f07d73dc4b5ad22896c00696ad0a7cf83312db92bd3"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.3/sqlike-0.4.3-darwin-x64.tar.gz"
      sha256 "9aba52f89f9b18e521a68214e8b0a0b42a17b13d129b98b1b7f7428063987f12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.3/sqlike-0.4.3-linux-arm64.tar.gz"
      sha256 "72ecbb839406dc0727c45841e430e89689a22ff36540413fb3a75a033520ad66"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.3/sqlike-0.4.3-linux-x64.tar.gz"
      sha256 "fe5aae2abd7931d909dced090ff90ba305ef41755104cd3051f1065c410e48a9"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
