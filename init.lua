vim.o.clipboard = "unnamedplus"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.opt.number = true
vim.opt.laststatus = 3
vim.opt.cmdheight = 0

vim.g.python3_host_prog = vim.fn.expand("/home/daniel/ice_pesquisa/bin/python3")

require("config.lazy")
