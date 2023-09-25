#!/bin/sh
set -eu

PROG=$(basename "$0")
_have() {
    type "$1" >/dev/null 2>&1
}

if ! _have bsdtar; then
    echo "$PROG: install bsdtar"
    sudo apt install libarchive-tools
fi

if _have bw; then
    echo "$PROG: bw found (skip)"
else
    echo "$PROG: install bw"
    TMPDIR="$(mktemp -d)"
    curl -LsS 'https://vault.bitwarden.com/download/?app=cli&platform=linux' | bsdtar -xf - -C "$TMPDIR"
    chmod +x "$TMPDIR/bw"

    test -d "$HOME/.local/bin" || mkdir -p "$HOME/.local/bin"
    mv "$TMPDIR/bw" "$HOME/.local/bin"

    rm -fr "$TMPDIR"
fi
