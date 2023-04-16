require('plugins')
require('options')
require('keymaps')
require('impatient')
require('tokyonight-config')
require('cmp-config')
require('mason-config')
require('telescope-config')
require('treesitter-config')
require('autopairs-config')
require('autotags-config')
require('comment-config')
require('project-config')
require('nvim-tree-config')
require('bufferline-config')
require('lsp')
require("toggleterm-config")
require('symbols-outline-config')
require('alpha-config')
require("staline-config")
require('indentline-config')
require('colorizer-config')
require('prettier-config')
require('discord-config')
require('surround-config')
require('smart-splits-config')
require('winbar-config')
--[[ require('pretty-fold-config') ]]
--[[ require('fold-preview-config') ]]
--[[ require('hologram-config') ]]

-- hide winbar for nvim-tree
--[[ vim.opt.winbar = "%f" ]]

vim.cmd('colorscheme tokyonight-moon')