class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.3.0/sqlike-0.3.0-darwin-arm64.tar.gz"
      sha256 "a0ce6dab04d8d0d296f0a929be508857dc5100fa436d76245a0df313409225a6"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.3.0/sqlike-0.3.0-darwin-x64.tar.gz"
      sha256 "423778b8d48035a4bc82ccded1533e100e01d45ccc55185509e7124c37a15254"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.3.0/sqlike-0.3.0-linux-arm64.tar.gz"
      sha256 "a323379015fffc3572ce0deebd83575968a847cd4ec9d0d01c00c8ba5d3b1df9"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.3.0/sqlike-0.3.0-linux-x64.tar.gz"
      sha256 "c298941f3013c8d0cefc05de91e5ee6b9894f57bf28eeb99cb2d98c79d31d4a4"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
