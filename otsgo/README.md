---
title: otsgo
homepage: https://github.com/emdneto/otsgo
tagline: |
  otsgo: A simple CLI and API client for One-Time Secret
---

To update or switch versions, run `webi ots@stable` (or `@v2`, `@beta`,
etc).

### Files

These are the files / directories that are created and/or modified with this
install:

```txt
~/.config/envman/PATH.env
~/.local/bin/ots
~/.local/opt/ots
```

## Cheat Sheet

### Share a generated secret

```
$ ots share -g
```

### Share custom secret with ttl and passphrase

```
$ ots share -s hellosecret -t 300 -p hello
```

### Share secret from file
```
$ cat <<EOF | ots share -f -
secret: hello
seret: secret
EOF

$ echo "hellosecret" | ots share -f
```

### Burn secrets
```
$ ots burn METADATA_KEY
```

### Get secret value
```
$ ots get secret SECRET_KEY
```
### Get secret metadata
```
$ ots get meta METADATA_KEY
```
### Get recent secrets (requires auth)
```
$ ots get recent
```