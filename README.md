# NewoVim Setup

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

To use this repo, just clone it inside the `~/.config/nvim` folder
