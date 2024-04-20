-- Keymaps are automatically loaded on the VeryLazy event
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Harpoon
keymap.set("n", "<Leader>mq", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<Leader>ma", ":lua require('harpoon.mark').add_file()<CR>")
keymap.set("n", "<Leader>mn", ":lua require('harpoon.ui').nav_next()<CR>")
keymap.set("n", "<Leader>mp", ":lua require('harpoon.ui').nav_prev()<CR>")
-- keymap.set("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<Leader>d", [[:OpenDiagnostics<CR>]], opts)

keymap.set("n", "<Leader>k", "<cmd>cnext<CR>zz")
keymap.set("n", "<Leader>j", "<cmd>cprev<CR>zz")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><", "<C-w><")
keymap.set("n", "<C-w>>", "<C-w>>")
keymap.set("n", "<C-w>+", "<C-w>+")
keymap.set("n", "<C-w>-", "<C-w>-")

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)
