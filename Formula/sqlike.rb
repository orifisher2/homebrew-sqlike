class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.1/sqlike-0.1.1-darwin-arm64.tar.gz"
      sha256 "91b6c89bb09b946fb752d21bf8d16482e00095ddc3245ea26bd624d73ee8ca40"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.1/sqlike-0.1.1-darwin-x64.tar.gz"
      sha256 "ba2ec051f7c626c587a85ac07981fe356b0e4834037f782a4b823ffcc4d1628d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.1/sqlike-0.1.1-linux-arm64.tar.gz"
      sha256 "251f7457a4a7d22184723dcbc2d80101a506f339c2732e47ad461206c76945e1"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.1/sqlike-0.1.1-linux-x64.tar.gz"
      sha256 "15301d0a6689f6e788de5b8cc0e3e03eedcfe8419fd71c2cc592e94ce5bfd119"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
