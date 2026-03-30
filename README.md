# homebrew-phntm

Homebrew tap for [PHNTM](https://phntm.sh) — encrypted, self-destructing file sharing.

## Install

```bash
brew tap aliirz/phntm
brew install phntm
```

## Usage

```bash
# Upload a file
phntm upload myfile.pdf

# Upload with custom expiry (default: 24h)
phntm upload myfile.pdf --expiry 1h

# Upload with password protection
phntm upload myfile.pdf --password secret
```

## Updating the Formula

Currently manual. When a new release is published:

1. Download the new archives
2. Generate SHA256 checksums:
   ```bash
   shasum -a 256 phntm_X.X.X_darwin_arm64.tar.gz
   shasum -a 256 phntm_X.X.X_darwin_amd64.tar.gz
   shasum -a 256 phntm_X.X.X_linux_arm64.tar.gz
   shasum -a 256 phntm_X.X.X_linux_amd64.tar.gz
   ```
3. Update `Formula/phntm.rb` with new version and checksums
4. Commit and push

**Future:** Add GitHub Action to auto-update formula on new releases.

## Links

- PHNTM Web: https://phntm.sh
- CLI Source: https://github.com/aliirz/phntm-cli
- Releases: https://github.com/aliirz/phntm-cli/releases