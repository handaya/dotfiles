#!/bin/sh
set -eu

if [ -x "$HOME/.local/share/fzf/install" ]; then
    "$HOME/.local/share/fzf/install" --xdg --key-bindings --completion --no-update-rc
fi
