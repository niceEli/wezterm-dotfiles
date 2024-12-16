# Installation

Clone this repository into your WezTerm configuration directory:

```bash
git clone https://github.com/niceEli/wezterm-dotfiles.git ~/.config/wezterm --recursive
```

WezTerm will automatically detect and load the configuration on next launch.

## Updating

To update the configuration and its submodules:

```bash
cd ~/.config/wezterm
git pull
git submodule update --init --recursive
```