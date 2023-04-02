local opt = vim.opt
local opto = vim.o

opt.number = true
opt.tabstop = 2
opt.showmode = false
opt.cmdheight = 2
opt.laststatus = 3
opt.shiftwidth = 2
opt.softtabstop = 2
opt.ttyfast = true
opt.cursorline = true
opt.termguicolors = true

opto.updatetime = 300
opto.incsearch = false
opto.signcolumn = 'yes'

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.cmd[[colorscheme catppuccin-mocha]]
