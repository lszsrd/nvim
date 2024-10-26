-- Global settings
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.ignorecase = true

-- Editor/UI settings
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂,eol:⁋'

vim.opt.showmode = false

vim.opt.mouse = 'a'

-- File edition settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.softtabstop = -1
vim.opt.autoread = true

-- Synchronise clipboard between Darwin and Neovim
vim.schedule(function() vim.opt.clipboard = "unnamedplus" end)
