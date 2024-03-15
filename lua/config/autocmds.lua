-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd
local create_cmd = vim.api.nvim_create_user_command
local cmd = vim.api.nvim_command
-- local augroup = vim.api.nvim_create_augroup
-- local settings = require("custom.chadrc").settings
local fn = vim.fn

-- Disable continuation comment on next line
autocmd("User", {
  desc = "no auto comment after pressing o",
  pattern = "*",
  command = "setlocal formatoptions-=cro",
})

-- Disable nvim-cmp for Markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    require("cmp").setup.buffer({ enabled = false })
  end,
})

---- Commands
-------------------------------------------------------------------------------

-- Open Github repository
create_cmd("OpenGithubRepo", function(_)
  local ghpath = vim.api.nvim_eval("shellescape(expand('<cfile>'))")
  local formatpath = ghpath:sub(2, #ghpath - 1)
  local repourl = "https://www.github.com/" .. formatpath
  vim.fn.system({ "xdg-open", repourl })
end, {
  desc = "Open Github Repo",
  force = true,
})

-- Custom commands
vim.cmd([[command! -nargs=0 GoToCommand :Telescope commands]])
vim.cmd([[command! -nargs=0 GoToFile :Telescope smart_open]])
vim.cmd([[command! -nargs=0 Grep :Telescope live_grep]])
vim.cmd([[command! -nargs=0 SmartGoTo :Telescope smart_goto]])
