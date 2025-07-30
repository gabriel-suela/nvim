---@diagnostic disable: missing-fields
return {
        {
                "catppuccin/nvim",
                priority = 1000,
                config = function()
                        require("catppuccin").setup({
                                flavour = "auto", -- latte, frappe, macchiato, mocha
                                background = {    -- :h background
                                        light = "latte",
                                        dark = "mocha",
                                },
                                transparent_background = true,   -- disables setting the background color.
                                show_end_of_buffer = false,      -- shows the '~' characters after the end of buffers
                                term_colors = false,             -- sets terminal colors (e.g. `g:terminal_color_0`)
                                dim_inactive = {
                                        enabled = false,         -- dims the background color of inactive window
                                        shade = "dark",
                                        percentage = 0.15,       -- percentage of the shade to apply to the inactive window
                                },
                                no_italic = false,               -- Force no italic
                                no_bold = false,                 -- Force no bold
                                no_underline = false,            -- Force no underline
                                styles = {                       -- Handles the styles of general hi groups (see `:h highlight-args`):
                                        comments = { "italic" }, -- Change the style of comments
                                        conditionals = { "italic" },
                                        loops = {},
                                        functions = {},
                                        keywords = {},
                                        strings = {},
                                        variables = {},
                                        numbers = {},
                                        booleans = {},
                                        properties = {},
                                        types = {},
                                        operators = {},
                                        -- miscs = {}, -- Uncomment to turn off hard-coded styles
                                },
                                default_integrations = true,
                                integrations = {
                                        gitsigns = true,
                                        nvimtree = true,
                                        treesitter = true,
                                        notify = true,
                                        mini = {
                                                enabled = true,
                                                indentscope_color = "",
                                        },
                                        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                                },
                                color_overrides = {
                                        all = {},
                                },
                                custom_highlights = {
                                        LineNr = { fg = "#919191" },
                                },
                        })

                        -- setup must be called before loading
                end,
        },
        {
                "sainnhe/gruvbox-material",
                priority = 1000, -- ensure it's loaded early
                config = function()
                        vim.g.gruvbox_material_background = "hard"
                        vim.g.gruvbox_material_transparent_background = 1
                        vim.g.gruvbox_material_foreground = "material" -- optional
                        vim.g.gruvbox_material_enable_bold = 1         -- optional
                        vim.g.gruvbox_material_enable_italic = 0       -- optional
                end,
        }
}
