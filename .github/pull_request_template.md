## What this changes

<!-- A new version, or a fix. Which one? -->

## Checklist

- [ ] The release tag exists in gonzalogtesta/brew-guard
- [ ] `sha256` is the hash of that tag's source archive (command in the PR text)
- [ ] The formula still only downloads that archive, checks it and builds it with Go
- [ ] `brew audit --strict` and `brew test` pass
- [ ] This is not a security report. Those go through SECURITY.md
