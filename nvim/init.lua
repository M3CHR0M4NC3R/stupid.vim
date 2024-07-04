vim.cmd("set nocompatible")
vim.cmd("set number")
vim.cmd("set mouse=a")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")
vim.g.mapleader=" "

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
   vim.fn.system({
     "git",
     "clone",
     "--filter=blob:none",
     "https://github.com/folke/lazy.nvim.git",
     "--branch=stable", -- latest stable release
     lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

--require("lazy").setup(plugins, opts)
require("lazy").setup("plugins")

vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', {})
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', {})
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', {})
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle reveal right<CR>', {})

