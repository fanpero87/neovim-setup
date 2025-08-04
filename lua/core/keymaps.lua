------------------------
-- Keybindings
------------------------

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- change default up and down keys
vim.keymap.set("n", "j", "k") -- j to go UP
vim.keymap.set("n", "k", "j") -- k to go DWON

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Reselect visual selection after indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>") -- increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
vim.keymap.set("n", "<leader>wv", "<C-w>v")        -- split window vertically
--vim.keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window
vim.keymap.set("n", "<leader>wh", "<C-w>h")        -- move to the window on the left
vim.keymap.set("n", "<leader>wj", "<C-w>j")        -- move to the window above
vim.keymap.set("n", "<leader>wk", "<C-w>k")        -- move to the window below
vim.keymap.set("n", "<leader>wl", "<C-w>l")        -- move to the window on the right

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

-- Move lines up and down
vim.keymap.set('i', '<C-j>', '<Esc>:move .+1<CR>==gi') --move the whole line up while on insert mode
vim.keymap.set('i', '<C-k>', '<Esc>:move .-2<CR>==gi') --move the whole line down while on insert mode
vim.keymap.set('n', '<C-j>', ':move .+1<CR>==') --move the whole line up while on normal mode
vim.keymap.set('n', '<C-k>', ':move .-2<CR>==') --move the whole line down while on normal mode
vim.keymap.set('v', '<C-j>', ":move '>+1<CR>gv=gv") --move the whole line up while on visual mode
vim.keymap.set('v', '<C-k>', ":move '<-2<CR>gv=gv") --move the whole line down while on visual mode

-- Disable annoying command line typo.
vim.keymap.set('n', 'q:', ':q')


-- Buffers
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', ':bprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bl', ':buffers<CR>', { noremap = true, silent = true })

----------------------
-- Keybinds from other plugins
----------------------

-- Tmux-navigator Plugin
-- Use ctrl and h,j,k,l to move between windows

-- Comment Plugin
-- "gc + c" -- comment/uncomment the whole line you are in
-- "gc + #lines + j" -- comment/uncomment the # of lines you want
