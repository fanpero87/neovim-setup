------------------------
-- Defaults
------------------------

vim.opt.showcmd = true -- displays incomplete commands in the lower right corner of the Neovim window
vim.opt.laststatus = 2 -- always shows the status line at the bottom of the window
vim.opt.autowrite = true -- automatically saves changes to a file before certain actions, such as switching buffers or exiting Neovim
vim.opt.autoread = true -- automatically reloads a file if it has been changed outside of Neovim

vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)

vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.shiftround = true -- ensures that indentations are rounded to the nearest multiple of `shiftwidth`
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true -- autoindent the next line

vim.opt.wrap = false -- disable line wrapping

vim.opt.cursorline = true -- highlight the current cursor line

vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

vim.opt.mouse = 'a' -- enable mouse for all modes

vim.opt.termguicolors = true -- enable the full array of colors

vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = '▸ ', trail = '·' }

vim.opt.scrolloff = 10 -- keep the cursor 10 lines above or down the limit of the screen
vim.opt.sidescrolloff = 10

vim.opt.clipboard = 'unnamedplus' -- Use system clipboard

vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom


