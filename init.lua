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

if vim.g.vscode then
	-- VSCode Neovim
	require("user.vscode_keymaps")
else
	-- Ordinary Neovim
end

require("config.remaps")
require("config.options")
-- vim.cmd("colorscheme vscode")
