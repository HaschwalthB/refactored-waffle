return {
     "telescope.nvim",
     dependencies = {
          "nvim-telescope/telescope-fzf-native.nvim",
          build = "make",
          config = function()
               require("telescope").load_extension("fzf")
          end,
     },
     opts = {
          vimgrep_arguments = {
               "rg",
               "--color=never",
               "--no-heading",
               "--with-filename",
               "--line-number",
               "--column",
               "--smart-case",
          },
          prompt_prefix = "> ",
          selection_caret = "> ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "descending",
          layout_strategy = "horizontal",
          layout_config = {
               horizontal = {
                    mirror = false,
               },
               vertical = {
                    mirror = false,
               },
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = {},
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = true,
          use_less = true,
          path_display = {},
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
     },
}
