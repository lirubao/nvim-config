-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = require("lazyvim.util").safe_keymap_set

map("i", "jk", "<cmd> wa <CR><ESC>")

-- 注释
map("n", "<A-/>", function()
  require("Comment.api").toggle.linewise.current()
end)
map("v", "<A-/>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
