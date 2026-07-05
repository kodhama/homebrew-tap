# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://gundisalwa.github.io/trellis/"
  version "0.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.16/trellis_darwin_arm64"
      sha256 "513fa57090fde4b4711ac6efe43ba15808c37eeecb3605f8ddb4be88b24a2982"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.16/trellis_darwin_amd64"
      sha256 "0a3c4dc8cf6c440bee7b763fc3b794ecf20b37db5afa0d5ebdcb72c9dbbdbd09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.16/trellis_linux_arm64"
      sha256 "f05f8bea43fe9f3da3aacad5972187ccc3c35fb3888442566a1ca157bd23f13c"
    end
    on_intel do
      url "https://github.com/gundisalwa/trellis/releases/download/v0.2.16/trellis_linux_amd64"
      sha256 "f4878c25d7ea2d989c7517d721345b9f4e8237764250230fc40c5be297a06f68"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
