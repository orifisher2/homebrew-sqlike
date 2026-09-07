class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.0/sqlike-0.4.0-darwin-arm64.tar.gz"
      sha256 "4a1534c0dd21d5bb382c82d571637b8a48497feb93674a7b8ca308db891b18ac"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.0/sqlike-0.4.0-darwin-x64.tar.gz"
      sha256 "a2c24e650fca3760576b3db4ae3863d0e8bea3428980024e416daf3bbff7a96f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.0/sqlike-0.4.0-linux-arm64.tar.gz"
      sha256 "32f0e5320f9de98cbb0070ef500216393e7bb2379293e95ca2378256037b4fe7"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.0/sqlike-0.4.0-linux-x64.tar.gz"
      sha256 "fe034ed00975fc78dd15d8d304a390cdd0da92827bdbec626b11fa840f657767"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
