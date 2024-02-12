return {
     {
          "folke/noice.nvim",
          event = "VeryLazy",
          notify = {
               opts = {
                    enabled = true,
               },
          },
          dependencies = {
               "MunifTanjim/nui.nvim",
          },
     },
     {
          "rcarriga/nvim-notify",
          enabled = true,
          config = function()
               require("notify").setup({
                    leave_open = true,
                    stages = "fade",
                    timeout = 5000,
                    background_colour = "#000000",
                    icons = {
                         ERROR = "",
                         WARN = "",
                         INFO = "",
                         DEBUG = "",
                         TRACE = "✎",
                    },
               })
          end,
          -- { "🭽", "▔", "🭾", "▕", "🭿", "▁", "🭼", "▏" },
     },
}
