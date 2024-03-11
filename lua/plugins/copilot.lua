-- copilot
-- nvim cmp
-- copilot
return {
     {
          "zbirenbaum/copilot.lua",
          cmd = "Copilot",
          build = ":Copilot auth",
          opts = {
               suggestion = { enabled = false },
               panel = { enabled = false },
               filetypes = {
                    markdown = true,
                    help = true,
               },
          },
     },

     --- nvim cmp
     {
          "nvim-cmp",
          dependencies = {
               {
                    "zbirenbaum/copilot-cmp",
                    dependencies = "copilot.lua",
                    opts = {},
                    config = function(_, opts)
                         local copilot_cmp = require("copilot_cmp")
                         copilot_cmp.setup(opts)
                         -- attach cmp source whenever copilot attaches
                         -- fixes lazy-loading issues with the copilot cmp source
                         require("lazyvim.util").lsp.on_attach(function(client)
                              if client.name == "copilot" then
                                   copilot_cmp._on_insert_enter({})
                              end
                         end)
                    end,
               },
          },
          ---@param opts cmp.ConfigSchema
          opts = function(_, opts)
               table.insert(opts.sources, 1, {
                    name = "copilot",
                    group_index = 1,
                    priority = 100,
               })
          end,
     },

     --- copilot cmp
     {
          "zbirenbaum/copilot-cmp",
          dependencies = "copilot.lua",
          opts = {},
          config = function(_, opts)
               local copilot_cmp = require("copilot_cmp")
               copilot_cmp.setup(opts)
               -- attach cmp source whenever copilot attaches
               -- fixes lazy-loading issues with the copilot cmp source
               require("lazyvim.util").lsp.on_attach(function(client)
                    if client.name == "copilot" then
                         copilot_cmp._on_insert_enter({})
                    end
               end)
          end,
     },

     -- copilot chat
     --
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
