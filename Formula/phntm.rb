class Phntm < Formula
  desc "CLI for PHNTM - encrypted, self-destructing file sharing"
  homepage "https://phntm.sh"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.1.2/phntm_0.1.2_darwin_amd64.tar.gz"
      sha256 "7c283c9de2d0b2b8d6a7d24cda35935eac453287d1dcfb757d9cf2be2b928a3f"
    end
    on_arm do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.1.2/phntm_0.1.2_darwin_arm64.tar.gz"
      sha256 "44b5385e48e5a5e3555ab1e772c381c7a80aaa18c3729068512f882eb74965f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.1.2/phntm_0.1.2_linux_amd64.tar.gz"
      sha256 "dc2f6fd41a254f3a0553db564f8fe298e5de5608d42f53a5888a151424f3b9fd"
    end
    on_arm do
      url "https://github.com/aliirz/phntm-cli/releases/download/v0.1.2/phntm_0.1.2_linux_arm64.tar.gz"
      sha256 "2cf52854fb89bf2b79f45f72e6faca87b305ade7f1930d131cbc6fef39974971"
    end
  end

  def install
    bin.install "phntm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phntm --version")
  end
end