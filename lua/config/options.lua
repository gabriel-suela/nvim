vim.g.mapleader = " "

vim.g.maplocalleader = " "

-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.fillchars = { eob = " " }

vim.opt.smartindent = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.conceallevel = 2

vim.opt.clipboard = "unnamedplus"

vim.cmd([[au BufNewFile,BufRead *.yaml.gotmpl setf yaml]])

vim.opt.fileformats = { "unix", "dos" }

vim.diagnostic.config({
  virtual_text = true, -- Exibe mensagens inline
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
