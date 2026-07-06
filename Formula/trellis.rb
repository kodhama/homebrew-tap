# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.17/trellis_darwin_arm64"
      sha256 "35d2e99541639fd0dca05cda9c2151b23d495d39abfbee77d54ee7434f5c674f"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.17/trellis_darwin_amd64"
      sha256 "77254815e4efb789e837d15d6ff8d4aa7e8ab63bd21c26058dc86fba5aeb0c4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.17/trellis_linux_arm64"
      sha256 "74d973e75d77f1fdd5875d71d872659bfa20cc127fc702581214f9a8b26d8114"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.17/trellis_linux_amd64"
      sha256 "abe7c169d827976b84db9d1df0306d2c8c19d1694ef84e89da178659b07c00a2"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
