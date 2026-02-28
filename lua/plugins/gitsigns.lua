-- lua/plugins/gitsigns.lua
return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      current_line_blame = true,
      signcolumn = true,
    })
    vim.keymap.set("n", "]h", require("gitsigns").next_hunk, { desc = "Next hunk" })
    vim.keymap.set("n", "[h", require("gitsigns").prev_hunk, { desc = "Prev hunk" })
    vim.keymap.set("n", "<leader>hp", require("gitsigns").preview_hunk, { desc = "Preview hunk" })
  end,
}
