-- lua/config/keymaps.lua
local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Explorer (Neo-tree)" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })

-- Diagnostics
map("n", "<leader>de", vim.diagnostic.open_float, { desc = "Diagnostic float" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- LSP (binds feitos ao anexar também; esses são extras globais)
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
