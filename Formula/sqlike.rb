class Sqlike < Formula
  desc "Deterministic SQL static analysis and query-equivalence checking"
  homepage "https://sqlike.com"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.0/sqlike-0.1.0-darwin-arm64.tar.gz"
      sha256 "31a8f86a02db833da17fc0f19ce7d93c864d1f06043ffb7709ee3c534abd57fc"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.0/sqlike-0.1.0-darwin-x64.tar.gz"
      sha256 "7d96becd9ac5919832baa9b627d72831b268ad873f9293f10312eed3067b34af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.0/sqlike-0.1.0-linux-arm64.tar.gz"
      sha256 "00043aca6c150fdcc1d048d8e61cd5ec5fa1daaae4577bde0b953b5cf7e6d1b9"
    end
    on_intel do
      url "https://github.com/orifisher2/sqlike/releases/download/cli-v0.1.0/sqlike-0.1.0-linux-x64.tar.gz"
      sha256 "f02035c7481fce3d463cb22bbb4bf83973c719f6c4eb919b70045871a9051a73"
    end
  end

  def install
    bin.install "sqlike"
  end

  test do
    assert_match "sqlike", shell_output("#{bin}/sqlike --help")
  end
end
