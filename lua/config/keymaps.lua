-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local map = require("lazyvim.util").safe_keymap_set

-- disable
local function disable(mode, key)
  vim.api.nvim_set_keymap(mode, key, "<Nop>", { noremap = true, silent = true })
end

-- disable("n", "<leader>l") -- open Lazy
disable("n", "<leader>cm") -- open Mason
-- disable("n", "<leader>cl") -- LspInfo
-- disable("n", "<leader>L") -- LazyVim changelog
-- disable("i", "<C-w>") -- delete backwards in insert mode, redefined below
-- disable("i", "<C-j>") -- move down in insert mode, redefined below

--[[ General Mappings ]]
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
-- files
vim.api.nvim_set_keymap("n", "!!", ":qa!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "E", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false })
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "st", ":TodoTelescope<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ss", ":%s/", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>rw", ":%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true })
vim.api.nvim_set_keymap("n", "gh", "<cmd>OpenGithubRepo<cr>", { noremap = true })

-- Custom navigation
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-f>", "<C-f>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-b>", "<C-b>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "10k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Up>", "10k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "10j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "10j", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-s>", ":w!<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":q<cr>", { noremap = true })

keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true })
-- vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Down>", ":m '>+1<CR>gv=gv", { noremap = true })
-- vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-Up>", ":m '<-2<CR>gv=gv", { noremap = true })
