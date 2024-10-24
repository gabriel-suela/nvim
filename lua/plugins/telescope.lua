return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons", -- Changed to a popular fork with active maintenance
    "nvim-telescope/telescope-project.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" }, -- Ignoring common directories
      }
    })
    require("telescope").load_extension("project")
    require("telescope").load_extension("git_worktree")
  end,
}
