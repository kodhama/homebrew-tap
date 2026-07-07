# homebrew-trellis

Homebrew tap for **[Trellis](https://kodhama.github.io/trellis/)** — a governance
layer that supervises an agentic software-development process.

```sh
brew install kodhama/trellis/trellis
```

Then run `trellis setup` in a project. Remove it any time with `brew uninstall trellis`.

## How it stays current

`Formula/trellis.rb` pins a version + sha256, so it is **regenerated on every Trellis
release** — never hand-edited. `scripts/gen-formula.sh` recomputes it from the latest
release; `.github/workflows/update-formula.yml` runs that on a `new-release` dispatch
from the main repo (or on demand via *Run workflow*). See `decision-0032` in the
[Trellis repo](https://github.com/kodhama/trellis).
