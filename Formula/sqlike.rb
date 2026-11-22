class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.7/sqlike-0.4.7-darwin-arm64.tar.gz"
      sha256 "ed956c49ab27334dece72217288e5779248aac9b1d5021293b879f2c160cf624"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.7/sqlike-0.4.7-darwin-x64.tar.gz"
      sha256 "6e1ba2ad4cf941f2a4518e3d50ef2a26be12c8ed241505be82cc0f09ca5a90bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.7/sqlike-0.4.7-linux-arm64.tar.gz"
      sha256 "c4a4712cbb535c003ee768c6b2fc5f0428aa9782c3a999a93934524cf6b3a3bf"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.7/sqlike-0.4.7-linux-x64.tar.gz"
      sha256 "cde93955ae3ffedc9d2b6c975f64268668a33c3ad6655feea109cbffe48762d7"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
