local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup("plugins", {
        change_detection = {
                notify = false,
        },
})

vim.o.laststatus = 2
vim.cmd [[
  hi! StatusLine guibg=NONE ctermbg=NONE
  hi! StatusLineNC guibg=NONE ctermbg=NONE
]]


require("config.remaps")
require("config.options")
vim.cmd("colorscheme gruvbox-material")
