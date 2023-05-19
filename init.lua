local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})


local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()
--
-- -------------------------------------- globals -----------------------------------------
-- g.python3_host_prog='~/anaconda3/bin/python3'
--
-- -------------------------------------- options ------------------------------------------
-- --opt.softtabstop = 2
-- 禁止生成交换文件
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

