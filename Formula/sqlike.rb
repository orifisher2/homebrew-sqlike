class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.6/sqlike-0.4.6-darwin-arm64.tar.gz"
      sha256 "1450594bb30891a80f0499c20a5e5dc1a56990637d612c28fba8569c747f3417"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.6/sqlike-0.4.6-darwin-x64.tar.gz"
      sha256 "b7eb1759adbb7ea39829cfe454bcc17ce2ca18418c712a912f7ec9d6b5a572a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.6/sqlike-0.4.6-linux-arm64.tar.gz"
      sha256 "94acf9edd49be1661b0810765ed3a64528e773112cb116dc4d57004d0b79130e"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.6/sqlike-0.4.6-linux-x64.tar.gz"
      sha256 "f4bbba6d82df4e5d8cb9286df93442ff1d6302b90b1dde9e3a39f1af01a2f5f5"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
