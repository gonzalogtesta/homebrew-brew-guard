# homebrew-brew-guard

Homebrew tap for [brew-guard](https://github.com/gonzalogtesta/brew-guard).

This repo only holds the formula. The code, the issues and the releases are in
the main repo.

## Status

The formula installs brew-guard v0.3.1, built from source. It is new and I have
not tested the whole install path yet. `templates/` has the draft that new
versions are made from.

## Install

```
brew tap gonzalogtesta/brew-guard
brew install brew-guard
```

Do this with the real `brew`, before you put the brew-guard link in your
`PATH`: brew-guard's own wrapper refuses `user/tap/name`.

## Before you install

A tap is code that runs on your machine, so read it first. The formula is one
short file: `Formula/brew-guard.rb`. It should only:

- download the source archive of a tagged release from
  `github.com/gonzalogtesta/brew-guard`
- check it against a pinned `sha256`
- build it with Go

If you see anything else, don't install it and open an issue.

The `sha256` is the one of the source archive GitHub makes for the tag. The
release of the main repo publishes checksums of the binaries, not of this
archive, so they won't match. You can download the archive yourself and run
`shasum -a 256` on it.

## Note

This is a third party tap. brew-guard's own rules treat third party taps with
care: you review the code before installing, and a version younger than 12 days
is held back by default.

## Contributing and security

See [CONTRIBUTING.md](CONTRIBUTING.md) and [SECURITY.md](SECURITY.md). Everyone
follows the [code of conduct](CODE_OF_CONDUCT.md).

## Licence

MIT
