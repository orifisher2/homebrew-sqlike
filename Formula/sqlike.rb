class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.5/sqlike-0.4.5-darwin-arm64.tar.gz"
      sha256 "28b8aa68af9d55a3e99d841df88fc29e2ad0617b4b94259e058e695792880344"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.5/sqlike-0.4.5-darwin-x64.tar.gz"
      sha256 "2bbfde975c7589d95131035f35631555d421fdaea4468ed5216025a989b33f4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.5/sqlike-0.4.5-linux-arm64.tar.gz"
      sha256 "32a0259fa03f947f3fe794469832cec3f23f0f0e3afce315201c3fce2a376edc"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.5/sqlike-0.4.5-linux-x64.tar.gz"
      sha256 "b078c5ff3c02af42b3a26ddf39aa25c7414683f40db976bc1bc9b9554132fd62"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
