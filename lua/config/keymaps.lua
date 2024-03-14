-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--  i wanna make some keympa, that gonna jump directly to the next errors
--   copilot keymaps
--key.set("n", "gj", "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>")
local opts = { noremap = true, silent = true }
local keymap = vim.keymap

vim.api.nvim_set_keymap("n", "<C-f>", "", opts)
keymap.set("n", "<C-m>", "8j", opts)
keymap.set("n", "<C-i>", "8k", opts)
keymap.set("n", "gj", vim.diagnostic.goto_next)
keymap.set("n", "gk", vim.diagnostic.goto_prev)

keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
Keys = {
     {
          "<leader>tt",
          function()
               require("neotest").run.run(vim.fn.expand("%"))
          end,
          desc = "Run File",
     },

     {

          "<leader>tT",
          function()
               require("neotest").run.run(vim.loop.cwd())
          end,
          desc = "Run All Test Files",
     },
     {
          "<leader>tr",
          function()
               require("neotest").run.run()
          end,
          desc = "Run Nearest",
     },
     {
          "<leader>ts",
          function()
               require("neotest").summary.toggle()
          end,
          desc = "Toggle Summary",
     },
     {
          "<leader>to",
          function()
               require("neotest").output.open({ enter = true, auto_close = true })
          end,
          desc = "Show Output",
     },
     {
          "<leader>tO",
          function()
               require("neotest").output_panel.toggle()
          end,
          desc = "Toggle Output Panel",
     },
     {
          "<leader>tS",
          function()
               require("neotest").run.stop()
          end,
          desc = "Stop",
     },
}
