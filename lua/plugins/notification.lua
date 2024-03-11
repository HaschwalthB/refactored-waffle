return {
     {
          "folke/noice.nvim",
          event = "VeryLazy",
          notify = {
               opts = {
                    enabled = false,
               },
          },
          dependencies = {
               "MunifTanjim/nui.nvim",
          },
     },
     {
          "rcarriga/nvim-notify",
          enabled = false,
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
     },
}
