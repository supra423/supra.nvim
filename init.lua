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

-- transparent background
vim.cmd([[
	highlight Normal guibg=NONE ctermbg=NONE
	highlight NormalNC guibg=NONE ctermbg=NONE
	highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

require("config.lazy")

-- persistent undo
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("config") .. "undo"
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

vim.g.mapleader = " "

vim.keymap.set("n", "\\", function()
	vim.cmd("Lex")
end)
