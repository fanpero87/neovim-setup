# NeoVim Setup

This is my `nvim` configuration.

This is the `file tree` this repo is following

```
~/.config/nvim
├── init.lua
├── lazy-lock.json
├── lua
│   ├── core
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── alpha.lua
│       ├── autopair.lua
│       ├── bufferline.lua
│       ├── catppuccin.lua
│       ├── comment.lua
│       ├── completions.lua
│       ├── floaterm.lua
│       ├── gitsigns.lua
│       ├── lsp-config.lua
│       ├── lualine.lua
│       ├── neo-tree.lua
│       ├── none-ls.lua
│       ├── nvim-cmp.lua
│       ├── telescope.lua
│       ├── tmux-navigator.lua
│       └── treesitter.lua
└── README.md
```

## Pre-requisites

- NeoVim v0.11 or Higher installed
- Nodejs Installed (Install a tool like `nvm` is recommended)
- A `C` compiler. On Ubuntu distros you can do `sudo apt-get install build-essential`
- Nerd Font to display some icons (Make sure the nerd font you set doesn't end with Mono)

## Installation
- Make a backup of your current Neovim files
```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone this repo
```
git clone https://github.com/fanpero87/neovim-setup.git ~/.config/nvim
```

- Remove the `.git` folder, so you can add it to your own repo later

- Open the `init.lua` to start the installation of all packages

- Run `:Mason` to install the LSP servers from the config files

### Troubleshoot

If you have problems with the initial setup, you can use commands like:

```
# Loads all plugins and check if everything is working correctly
:LazyHealth
```
