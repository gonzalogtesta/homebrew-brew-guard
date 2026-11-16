# Contributing

This repo is only the formula. The code, the issues about how brew-guard
behaves and the releases are in the
[main repository](https://github.com/gonzalogtesta/brew-guard).

## What belongs here

- a new version of the formula (`url`, `sha256` and the version in the README)
- a fix for the formula: it doesn't build, the test fails, `brew audit` complains

Please open an issue first for anything else.

## Rules

- The formula only downloads the source archive of a tagged release from
  `github.com/gonzalogtesta/brew-guard`, checks it against a pinned `sha256`, and
  builds it with Go. A pull request that makes it do anything else will be
  closed.
- No new dependencies in the formula, and no patches or downloaded scripts.
- The `go` toolchain is never downloaded by Go itself (`GOTOOLCHAIN=local`).

## A version bump

Only a tagged release that exists in the main repository is accepted. In the
pull request, say how you got the hash, for example:

```
curl -fsSL https://github.com/gonzalogtesta/brew-guard/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```

I check it again myself before I merge.

## Test it

```
brew audit --strict --online gonzalogtesta/brew-guard/brew-guard
brew install --build-from-source gonzalogtesta/brew-guard/brew-guard
brew test gonzalogtesta/brew-guard/brew-guard
```

Do this in a throwaway environment if you can. `brew install` also upgrades
outdated dependencies, so on an old machine it can change more than you expect.

By contributing you agree that your work is under the [MIT licence](LICENSE).
Everyone taking part follows the [code of conduct](CODE_OF_CONDUCT.md).
