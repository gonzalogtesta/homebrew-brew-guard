# Security policy

This repo only holds the Homebrew formula for
[brew-guard](https://github.com/gonzalogtesta/brew-guard). People install what
is in here, so a change to the formula is a security matter.

## Reporting a problem

Please don't open a public issue for a security problem.

Use GitHub's private reporting: go to the Security tab of this repository and
click "Report a vulnerability". If that is not available, open a public issue
that only says you have a security report, without details, and I will contact
you.

Report it here if:

- the formula downloads or runs something it should not
- the `sha256` or the `url` in the formula doesn't match the release
- you see a way someone else could change what the formula installs

Problems in brew-guard itself go to the
[main repository](https://github.com/gonzalogtesta/brew-guard/blob/main/SECURITY.md).
Problems in Homebrew go to Homebrew.

This is a one person project, so I can't promise a fixed response time. I will
keep you updated and credit you in the fix if you want.
