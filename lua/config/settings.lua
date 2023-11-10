vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Spell
vim.opt.spell = true
vim.opt.spelllang = 'en_us'


-- Loader
vim.loader.enable()

-- enable clipboard for mac os
vim.opt.clipboard:append { 'unnamedplus' }

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
