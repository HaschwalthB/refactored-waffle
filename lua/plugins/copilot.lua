return {
     {
          "github/copilot.vim",
          lazy = false,
          config = function()
               vim.g.copilot_no_tab_map = true
               vim.g.copilot_assume_mapped = true
               vim.g.copilot_tab_fallback = ""
          end,
     },
     {
          "L3MON4D3/LuaSnip",
          keys = function()
               return {}
          end,
     },
     -- copilot chat
     {
          "CopilotC-Nvim/CopilotChat.nvim",
          branch = "canary",
          model = "gpt-4", -- GPT model to use, 'gpt-3.5-turbo' or 'gpt-4'
          dependencies = {
               { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
               { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
          },
          opts = {
               debug = false, -- Enable debugging
               -- See Configuration section for rest
          },
          -- See Commands section for default commands if you want to lazy load on them
     },
}
