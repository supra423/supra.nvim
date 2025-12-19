-- basic configs
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.wrap = false
vim.o.scrolloff = 10
vim.o.relativenumber = true
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.cmd("syntax enable")

-- lazy.nvim
require("config.lazy")

-- mason packages, not sure if this is really necessary, but this should make it
-- so that neovim can see the bin packages installed using mason
vim.env.PATH = vim.env.PATH .. ":" .. vim.fn.stdpath("data") .. "/mason/bin"

-- persistent undo
vim.o.undodir = vim.fn.stdpath("config") .. "/undo"
vim.o.undolevels = 1000
vim.o.undoreload = 10000
vim.o.undofile = true

vim.g.mapleader = " "

vim.keymap.set("n", "\\", function()
	vim.cmd("Lex")
end)
