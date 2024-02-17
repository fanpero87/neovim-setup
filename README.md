# NeoVim Setup

This is my `nvim` configuration.
I copied almost everything from this [Youtube video](https://www.youtube.com/watch?v=vdn_pKJUda8) and have made a few changes along the way.

This is the `file tree` this repo is following

```
~/.config/nvim
|-- README.md
|-- init.lua
|-- lua
|   |-- configuration.lua
|   |-- plugins
|   |   |-- autopairs.lua
|   |   |-- comment.lua
|   |   |-- gitsigns.lua
|   |   |-- indent-blankline.lua
|   |   |-- lsp
|   |   |   |-- lspconfig.lua
|   |   |   |-- lspsaga.lua
|   |   |   |-- mason.lua
|   |   |   `-- null-ls.lua
|   |   |-- lualine.lua
|   |   |-- nvim-cmp.lua
|   |   |-- nvim-tree.lua
|   |   |-- telescope.lua
|   |   `-- treesitter.lua
|   `-- plugins-setup.lua
`-- plugin
    `-- packer_compiled.lua
```

## Pre-requisites

- NeoVim v0.9 or Higher installed
- Nodejs Installed

## How to use this Repo

- Clone it inside the `~/.config` folder and save the content on a folder named `nvim`
  `git clone https://github.com/fanpero87/neovim-setup.git ~/.config/nvim`
- Open the `init.lua` file so Packer can start the installation of all packages
- Run `:Mason` to install the LSP servers from the config files

### Troubleshoot

If you have problems with the initial setup, you can use commands like:

```
# To manually install packages
:PackerInstall

# To see all installed packages
:PackerStatus

# To Sync the configuration
:PackerSync
```
