# dotfiles

* [twpayne/chezmoi: Manage your dotfiles across multiple diverse machines, securely.](https://github.com/twpayne/chezmoi)
* [chezmoi - chezmoi](https://www.chezmoi.io/)

## install

```console
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init $GITHUB_USERNAME
```

## check

```console
chezmoi diff
```

## apply

```console
chezmoi apply
```
