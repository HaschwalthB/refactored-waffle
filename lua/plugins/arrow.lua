return {
     {
          "otavioschwanck/arrow.nvim",
          opts = {
               show_icons = true,
               leader_key = ";", -- Recommended to be a single key
               always_show_path = false,
               separate_by_branch = true, -- Bookmarks will be separated by git branch
               hide_handbook = false, -- set to true to hide the shortcuts on menu.
               save_path = function()
                    return vim.fn.stdpath("cache") .. "/arrow"
               end,
               mappings = {
                    edit = "e",
                    delete_mode = "d",
                    clear_all_items = "C",
                    toggle = "s", -- used as save if separate_save_and_remove is true
                    open_vertical = "v",
                    open_horizontal = "-",
                    quit = "q",
                    remove = "x", -- only used if separate_save_and_remove is true
               },
          },
     },
}
