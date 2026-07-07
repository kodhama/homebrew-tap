# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.22/trellis_darwin_arm64"
      sha256 "9284bb2e56b67d17f3bcd40b46adc8ad28892bf6305d52d55f484d507ea983be"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.22/trellis_darwin_amd64"
      sha256 "0c9992cc61fcb28381fd8e60d50b62d072695808eefee1cca6907ea422c0e638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.22/trellis_linux_arm64"
      sha256 "443f788ffbd56bed84ae6e26e76b4805e8d48fa553f5fd58041838c2fe3f7e0a"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.22/trellis_linux_amd64"
      sha256 "6aaab8a6fc9af9a6836af2f76338e4459c594a790c5bbf6d7b7abdddc7df1c5c"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
