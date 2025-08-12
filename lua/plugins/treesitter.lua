return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "blade",
        "caddy",
        "json",
        "javascript",
        "typescript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "nginx",
        "perl",
        "php",
        "python",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
      },
    })
    vim.treesitter.language.register("bash", "zsh")
  end,
}
