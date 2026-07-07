# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.20/trellis_darwin_arm64"
      sha256 "a4559e5021c6899ee308ced74cf4483aa67a473312d3345e5a79902ecf02081f"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.20/trellis_darwin_amd64"
      sha256 "94b50486cd5967ffabfbc03e6f84098aa26ba063d16420f38115ee36bb8e8bf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.20/trellis_linux_arm64"
      sha256 "c39c6eccce52259c64ca1627fdf604873a64d283515ec496df9514f990bacd77"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.20/trellis_linux_amd64"
      sha256 "c354ee376feed4f2f736bd65d69a5e709a763c9edf812d4a9237574e8736ec44"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
