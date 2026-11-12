# homebrew-brew-guard

Homebrew tap for [brew-guard](https://github.com/gonzalogtesta/brew-guard).

This repo only holds the formula. The code, the issues and the releases are in
the main repo.

## Status

There is no release yet, so there is no formula to install. The formula goes in
`Formula/` when the first release is tagged. Until then, `templates/` has the
draft.

## Install (after the first release)

```
brew tap gonzalogtesta/brew-guard
brew install brew-guard
```

## Before you install

A tap is code that runs on your machine, so read it first. The formula is one
short file: `Formula/brew-guard.rb`. It should only:

- download the source archive of a tagged release from
  `github.com/gonzalogtesta/brew-guard`
- check it against a pinned `sha256`
- build it with Go

If you see anything else, don't install it and open an issue.

You can also compare the `sha256` in the formula with the checksum published in
the release of the main repo.

## Note

This is a third party tap. brew-guard's own rules treat third party taps with
care: you review the code before installing, and a version younger than 12 days
is held back by default.

## Licence

MIT
