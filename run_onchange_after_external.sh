#!/bin/sh
set -eu

test -x "$HOME/.local/share/fzf/install" && "$HOME/.local/share/fzf/install" --xdg --key-bindings --completion --no-update-rc
