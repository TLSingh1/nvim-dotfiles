local smart_splits = require('smart-splits-config')
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Resize with Smart Splits
keymap("n", '<C-h>', ":SmartResizeLeft <CR>", { silent = true })
keymap("n", '<C-l>', ":SmartResizeRight <CR>", { silent = true })
keymap("n", '<C-j>', ":SmartResizeDown <CR>", { silent = true })
keymap("n", '<C-k>', ":SmartResizeUp <CR>", { silent = true })

-- Better formatting
keymap("n", "<leader>a", ":Format<CR>", opts)

-- Better splitting 
keymap("n", "<leader>d", ":vs <CR>", opts)
keymap("n", "<leader>s", ":split <CR>", opts)
keymap("n", "<leader>c", ":q <cr>", opts)
keymap("n", "<c-n>", ":bdelete <cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Nvim Tree
keymap("n", "z", ":NvimTreeToggle<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
--[[ keymap("n", "<A-p>", ":ToggleTerm <CR>", opts) ]]
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>", opts)
keymap("n", "<leader>t", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>w", ":w <cr>", opts)
keymap("n", ";", ":SymbolsOutline <CR>", opts)
--[[ keymap("n", "<M-;>", ":ToggleTerm <CR>", opts) ]]
--[[ keymap("n", ";", ":<CR>", opts) ]]
--[[ keymap("n", "<leader>w <cr>", ":w", opts) ]]
--[[ keymap("n", "<c-[>", "<cmd>SymbolsOutline<CR>", opts) ]]

vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
