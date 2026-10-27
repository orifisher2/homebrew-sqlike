class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.2/sqlike-0.4.2-darwin-arm64.tar.gz"
      sha256 "56f8b98eaf6a5202f25c6b461adf4bd8264d2417af70a5cc4d69b146b5af7a6c"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.2/sqlike-0.4.2-darwin-x64.tar.gz"
      sha256 "23e7d5380688d90be59cd5041cf62aeae487f26c2b52d10d8928b9c85d512527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.2/sqlike-0.4.2-linux-arm64.tar.gz"
      sha256 "c77a80444a6d12f5ed46447ab64899c96a1e51b2382c3057e53740498d44cfd1"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.2/sqlike-0.4.2-linux-x64.tar.gz"
      sha256 "4e88953e7d91414729c870564b7f0365c2b6a64f54d467adef2481687ec26325"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
