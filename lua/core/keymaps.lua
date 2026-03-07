------------------------
-- Keybindings
------------------------

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- change default up and down keys
vim.keymap.set("n", "j", "k") -- j to go UP
vim.keymap.set("n", "k", "j") -- k to go DOwN

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Reselect visual selection after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>") -- increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window
vim.keymap.set("n", "<leader>mh", "<C-w>h")        -- move to the window on the left
vim.keymap.set("n", "<leader>mk", "<C-w>k")        -- move to the window above
vim.keymap.set("n", "<leader>mj", "<C-w>j")        -- move to the window below
vim.keymap.set("n", "<leader>ml", "<C-w>l")        -- move to the window on the right

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

-- Disable annoying command line typo.
vim.keymap.set('n', 'q:', ':q<CR>')

-- Buffers
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Go to next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>bl', ':buffers<CR>', { noremap = true, silent = true, desc = 'Show list of open buffers' })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Close current buffer'})

----------------------
-- Keybinds from other plugins
----------------------

-- Tmux-navigator Plugin
-- Use ctrl and h,j,k,l to move between windows

-- Comment Plugin
-- "gc + c" -- comment/uncomment the whole line you are in
-- "gc + #lines + j" -- comment/uncomment the # of lines you want
