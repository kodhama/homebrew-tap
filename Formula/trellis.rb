# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.26/trellis_darwin_arm64"
      sha256 "aeef10571c0f8e6f87b872a49c26d03105014701d01df5812a9c376738f97d6e"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.26/trellis_darwin_amd64"
      sha256 "4a063e44e356e6d56b74e2dd8c9fcef7f41250b202578be33633b1a04609e856"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.26/trellis_linux_arm64"
      sha256 "18c9a6ee0cd3d013e0aa85182762d29cd94b7f0dfed89ae955b4d5bb8271d156"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.26/trellis_linux_amd64"
      sha256 "8b76a39b8c5fc5e1314d81886b291689ce81f683c561e55212ae0c2e09b541a5"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
