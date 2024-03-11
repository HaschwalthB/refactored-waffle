return {
     {
          "craftzdog/solarized-osaka.nvim",
          lazy = true,
          priority = 1000,
          config = function()
               require("solarized-osaka").setup({
                    transparent = true,
                    styles = {
                         sidebars = "transparent",
                         floats = "transparent",
                         comments = "italic",
                         functions = "italic",
                         keywords = "italic",
                    },
                    on_highlights = function(highlights, colors)
                         highlights.Visual = {
                              bg = colors.fg,
                              fg = colors.bg,
                         }
                         highlights.AlphaButtons = {
                              link = "Conceal",
                         }
                         highlights.AlphaHeader = {
                              link = "Debug",
                         }
                         highlights.AlphaShortcut = {
                              link = "@keyword",
                         }
                    end,
                    on_colors = function(colors)
                         colors.hint = colors.orange
                         colors.error = "#ff0000"
                    end,
               })
               local colors = require("solarized-osaka.colors").default
               vim.api.nvim_create_autocmd("ColorScheme", {
                    pattern = "solarized-osaka",
                    callback = function()
                         vim.api.nvim_set_hl(0, "Visual", { bg = colors.fg, fg = colors.bg })
                         vim.api.nvim_set_hl(0, "AlphaButtons", { link = "Conceal" })
                         vim.api.nvim_set_hl(0, "AlphaHeader", { link = "Debug" })
                         vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "@keyword" })
                    end,
                    group = vim.api.nvim_create_augroup("FixSolarizedOsaka", { clear = true }),
                    desc = "Fix some highlight for solarized-osaka colorscheme",
               })
          end,
     },
     {
          "rose-pine/neovim",
          name = "rose-pine",
          lazy = true,
          priority = 1000,
          opts = {
               variant = "moon", -- auto, main, moon, or dawn
               dark_variant = "main", -- main, moon, or dawn
               dim_inactive_windows = false,
               extend_background_behind_borders = true,

               enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true, -- Handle deprecated options automatically
               },

               styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                    variables = { bold = true },
               },

               groups = {
                    border = "love",
                    link = "iris",
                    panel = "surface",

                    error = "#ff0000",
                    hint = "love",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
               },

               highlight_groups = {
                    TelescopeBorder = { fg = "highlight_high", bg = "none" },
                    TelescopeNormal = { bg = "none" },
                    TelescopePromptNormal = { bg = "base" },
                    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                    TelescopeSelection = { fg = "text", bg = "base" },
                    TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
                    Comment = { fg = "muted" },
                    -- VertSplit = { fg = "muted", bg = "muted" },
               },
          },
     },

     {
          "folke/tokyonight.nvim",
          lazy = true,
          priority = 1000,
          config = function()
               require("tokyonight").setup({
                    style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                    light_style = "day", -- The theme is used when the background is set to light
                    transparent = true, -- Enable this to disable setting the background color
                    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
                    styles = {
                         -- Style to be applied to different syntax groups
                         -- Value is any valid attr-list value for `:help nvim_set_hl`
                         comments = { italic = true },
                         keywords = { italic = true },
                         functions = { italic = true },
                         variables = {},
                         -- Background styles. Can be "dark", "transparent" or "normal"
                         sidebars = "transparent", -- style for sidebars, see below
                         floats = "transparent", -- style for floating windows
                    },
                    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
                    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
                    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
                    dim_inactive = false, -- dims inactive windows
                    lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

                    --- You can override specific color groups to use other groups or a hex color
                    --- function will be called with a ColorScheme table
                    ---@param colors ColorScheme
                    on_colors = function(colors)
                         colors.error = "#ff0000"
                         colors.hint = colors.orange
                    end,
               })
          end,
     },

     {
          "LazyVim/LazyVim",
          opts = {
               colorscheme = "solarized-osaka",
          },
     },
}
