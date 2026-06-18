# rapidity-rs Homebrew Tap

Homebrew formulae for [rapidity-rs](https://github.com/rapidity-rs) tools.

## Usage

```sh
brew tap rapidity-rs/tap
brew trust rapidity-rs/tap   # required once for third-party taps
brew install jetti
```

Or in one step:

```sh
brew install rapidity-rs/tap/jetti
```

> Homebrew refuses to load formulae from third-party taps until you trust them.
> If you see an "untrusted tap" error, run `brew trust rapidity-rs/tap`.

## Available formulae

| Formula | Description |
|---------|-------------|
| [`jetti`](https://github.com/rapidity-rs/jetti) | A fast, cross-platform tool for organizing git repositories |
| [`lets`](https://github.com/rapidity-rs/lets) | A declarative CLI builder — define commands in KDL, get a CLI instantly |

## Updating

Formulae are bumped automatically by the release workflow in each tool's repo
when a new `v*` tag is published.
