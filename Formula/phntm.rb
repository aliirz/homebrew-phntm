class Phntm < Formula
  desc "CLI for PHNTM - encrypted, self-destructing file sharing"
  homepage "https://phntm.sh"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.2.0/phntm_0.2.0_darwin_amd64.tar.gz"
      sha256 "0da5862760a4853332fe34f1dbae8c3ea55cd0aeee4747924c402cd9d71b894f"
    end
    on_arm do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.2.0/phntm_0.2.0_darwin_arm64.tar.gz"
      sha256 "34f1bb64193bd7d17108483cfabaecbc0198333fefbf7b08cb81cae820adb8f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.2.0/phntm_0.2.0_linux_amd64.tar.gz"
      sha256 "a056d4f9343d483c502a67bea802c026fddc30fa046f9d6227d82bdefee5a472"
    end
    on_arm do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.2.0/phntm_0.2.0_linux_arm64.tar.gz"
      sha256 "1a8b232aa49fcb13339ef47238b9e90641fcc6be19f18efdc4bc4522cecd1e69"
    end
  end

  def install
    bin.install "phntm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phntm --version")
  end
end