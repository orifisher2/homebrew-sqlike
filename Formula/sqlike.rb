class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.9/sqlike-0.4.9-darwin-arm64.tar.gz"
      sha256 "eaf61972e50c7b489100b3049eff85b69ce9525fd5ecf5c4cbe3c47ea0d8c368"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.9/sqlike-0.4.9-darwin-x64.tar.gz"
      sha256 "88178d0223734ac498fdf8722b99caa1b9f93c96f3d238566c3a7cfea24fcb0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.9/sqlike-0.4.9-linux-arm64.tar.gz"
      sha256 "a5d581cf40b7421a2317610b8ee609b0e1fe06207931b1b6118cf85bac43d8f1"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.9/sqlike-0.4.9-linux-x64.tar.gz"
      sha256 "50a4a0ac8c2108a0584c5e01864e34ed9ca42fb1b96c436b2e02f6a0df455790"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
