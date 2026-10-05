class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.1/sqlike-0.4.1-darwin-arm64.tar.gz"
      sha256 "58997ea55851703d144220df107a8f695f9d5e3c9a194ae6e2b3dd8e9b98a55d"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.1/sqlike-0.4.1-darwin-x64.tar.gz"
      sha256 "6d460aa03daa2b01c5ced2c6548bd43a6fc08b28a33766e74820c2aaa360338a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.1/sqlike-0.4.1-linux-arm64.tar.gz"
      sha256 "8983872428384455df8c038ed202f034f0f79ab9091c980610aa067d83285db5"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.4.1/sqlike-0.4.1-linux-x64.tar.gz"
      sha256 "7c162f6529052409be6035de8e21b6a5e336b5d6eec852fc05bdd20684f6674d"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
