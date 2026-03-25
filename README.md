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
│       ├── autopairs.lua
│       ├── bufferline.lua
│       ├── colorscheme.lua
│       ├── comment.lua
│       ├── dap.lua
│       ├── floaterm.lua
│       ├── gitsigns.lua
│       ├── indent-blankline.lua
│       ├── lsp
│       │   ├── lspconfig.lua
│       │   └── mason.lua
│       ├── lualine.lua
│       ├── neo-tree.lua
│       ├── none-ls.lua
│       ├── nvim-cmp.lua
│       ├── telescope.lua
│       ├── tmux-navigator.lua
│       ├── treesitter.lua
│       └── which-key.lua
└── README.md
```

## Pre-requisites

- NeoVim v0.11 or Higher installed
- Nodejs Installed (A tool like `nvm` is recommended)
- A `C` compiler. On Ubuntu distros you can do `sudo apt-get install build-essential`
- Nerd Font to display some icons (Make sure the nerd font you set doesn't end with Mono)
- Install `ripgrep` (Required for live_grep on Telescope)


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

- Start Neovim (plugins will auto-install on first launch)


## Post-Install

- Remove the `.git` folder, so you can add it to your own repo later
- Install treesitter parsers (auto-installs, but can force) by running `:TSUpdate`
 

## Troubleshoot

- To check health run `:checkhealth`
- If the LSP is not working you can run `:LspInfo` or `:Mason`
- If you have problems with the initial setup, you can run: `:LazyHealth`
