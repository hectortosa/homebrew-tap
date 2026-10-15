# Homebrew tap

Formulae for [ThirdPartyDetective](https://github.com/hectortosa/ThirdPartyDetective), which turns SPDX SBOMs into third-party notices and license reports.

```bash
brew install hectortosa/tap/thirdpartydetective
```

The formula installs the release's standalone executable for macOS (Apple silicon, Intel) or Linux (x64, arm64), checked against the SHA-256 in the release's `SHA256SUMS`.

## Updating the formula

After a ThirdPartyDetective release is published, run the **Bump ThirdPartyDetective** workflow (Actions > Bump ThirdPartyDetective > Run workflow) with the release tag, for example `v1.0.0`. It:

1. downloads the release's `SHA256SUMS` and its macOS and Linux archives, checks them against `SHA256SUMS`, and verifies each archive's build provenance (built by the ThirdPartyDetective Release workflow from that tag);
2. writes `Formula/thirdpartydetective.rb` for that version;
3. installs and tests it on macOS (Apple silicon and Intel) and Linux;
4. opens a pull request with the change, for you to merge.

It needs **Allow GitHub Actions to create and approve pull requests** turned on in Settings > Actions > General.
