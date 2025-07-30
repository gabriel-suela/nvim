vim.g.mapleader = " "
-- vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.fillchars = { eob = " " }
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.conceallevel = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.winborder = "rounded"

vim.cmd([[au BufNewFile,BufRead *.yaml.gotmpl setf yaml]])

vim.opt.fileformats = { "unix", "dos" }

if vim.fn.has('wsl') == 1 then
        vim.api.nvim_create_autocmd('TextYankPost', {

                group = vim.api.nvim_create_augroup('Yank', { clear = true }),

                callback = function()
                        vim.fn.system('clip.exe', vim.fn.getreg('"'))
                end,

        })
end


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

vim.cmd(":hi statusline guibg=NONE")
