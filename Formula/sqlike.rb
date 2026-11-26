class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.8/sqlike-0.4.8-darwin-arm64.tar.gz"
      sha256 "6401f24be027b323f7267d230a7f73c34ebe19ef571078ef6ae6d2db3bd6fca0"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.8/sqlike-0.4.8-darwin-x64.tar.gz"
      sha256 "dabd73c809034c251a72f77ca6a4e3aa3be7856a081e35e5fcd5e96c65b9b1da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.8/sqlike-0.4.8-linux-arm64.tar.gz"
      sha256 "c6b8495fdf1dcc9c2910a2a95a8f2985bbd3fb88a019a966c44d76f18b2b9175"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.8/sqlike-0.4.8-linux-x64.tar.gz"
      sha256 "efa47fcf04d48bffd0adc9828630f7ee41f48c844f31ec4c1fdd09c4a8c23d08"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
