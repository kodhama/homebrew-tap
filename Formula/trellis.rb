# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "0.2.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.29/trellis_darwin_arm64"
      sha256 "cd2ce6b67ea80867777423cb55332a745f9b8eeddf4c3e14db040ecceb8e918e"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.29/trellis_darwin_amd64"
      sha256 "152cf0fc339223cb9388c4334fd1bdcdec55828c45a21fe261e25bc0a0d66a61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.29/trellis_linux_arm64"
      sha256 "cbbae805bca47f6dc4dd56356374dc6a5ab08e826265d5dd36761a989846d7d8"
    end
    on_intel do
      url "https://github.com/kodhama/trellis/releases/download/v0.2.29/trellis_linux_amd64"
      sha256 "7cfe1e22792263a49ce751bedd25bb74e2947ed4ef3e135af8e45784b594fb1a"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
