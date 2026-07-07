#!/usr/bin/env bash
# Regenerate Formula/trellis.rb from the latest Trellis release (decision-0032).
# Reads are public — no token needed. Run from the tap repo root.
set -euo pipefail

repo="kodhama/trellis"
tag="$(curl -fsSL "https://api.github.com/repos/${repo}/releases/latest" | jq -r .tag_name)"
ver="${tag#v}"

declare -A sha
for a in darwin_arm64 darwin_amd64 linux_arm64 linux_amd64; do
  sha[$a]="$(curl -fsSL "https://github.com/${repo}/releases/download/${tag}/trellis_${a}" | sha256sum | cut -d' ' -f1)"
done

cat > Formula/trellis.rb <<RB
# typed: false
# frozen_string_literal: true

# Trellis — regenerated on each release by .github/workflows/update-formula.yml
# (decision-0032); don't hand-edit the version / url / sha256 lines.
class Trellis < Formula
  desc "Governance layer that supervises an agentic software-development process"
  homepage "https://kodhama.github.io/trellis/"
  version "${ver}"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/${repo}/releases/download/${tag}/trellis_darwin_arm64"
      sha256 "${sha[darwin_arm64]}"
    end
    on_intel do
      url "https://github.com/${repo}/releases/download/${tag}/trellis_darwin_amd64"
      sha256 "${sha[darwin_amd64]}"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/${repo}/releases/download/${tag}/trellis_linux_arm64"
      sha256 "${sha[linux_arm64]}"
    end
    on_intel do
      url "https://github.com/${repo}/releases/download/${tag}/trellis_linux_amd64"
      sha256 "${sha[linux_amd64]}"
    end
  end

  def install
    bin.install Dir["trellis_*"].first => "trellis"
  end

  test do
    assert_match "trellis", shell_output("#{bin}/trellis version")
  end
end
RB

echo "regenerated Formula/trellis.rb for ${ver}"
