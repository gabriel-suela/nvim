-- lua/config/options.lua
local env = require("config.env")
vim.g.NVIM_VDI = env.is_vdi()

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local o = vim.opt
o.number = true
o.relativenumber = true
o.wrap = false
o.termguicolors = true
o.signcolumn = "yes"
o.updatetime = 200
o.timeoutlen = 400
o.clipboard = "unnamedplus"

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.smartindent = true

o.ignorecase = true
o.smartcase = true

o.splitbelow = true
o.splitright = true

-- VDI-friendly: menos “barulho”, menos custo
if vim.g.NVIM_VDI then
  o.undofile = false
  o.swapfile = false
  o.backup = false
end
