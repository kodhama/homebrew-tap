# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.25/trellis_darwin_arm64"
      sha256 "6de43b532a8c32c6e20e06d323f1a2501d735c618132ff868603b14b31444c59"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.25/trellis_darwin_amd64"
      sha256 "2ca587ff4f3768f98dd96fe542aaa327edcb1c30eac9efd755fa5b4013713b05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.25/trellis_linux_arm64"
      sha256 "063d9f9f9e1215e7789421ded3f697f429005503d5c97ca6784c8cdffcca3e34"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.25/trellis_linux_amd64"
      sha256 "59d17d5d396fde8101cdd75fcb28ccd21bfcef0dde594df3eeb66424e2e61d00"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
