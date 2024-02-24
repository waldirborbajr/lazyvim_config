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

-- obsidian
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianBacklinks<cr>", { desc = "Obsidian Backlinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Obsidian New Note" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<cr>", { desc = "Obsidian Today" })
vim.keymap.set("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>", { desc = "Obsidian Yesterday" })
vim.keymap.set("n", "<leader>or", "<cmd>ObsidianTomorrow<cr>", { desc = "Obsidian Tomorrow" })

-- markdown
vim.keymap.set(
  "n",
  "<leader>da",
  '<cmd>setlocal formatoptions-=a<cr><cmd>setlocal textwidth=0<cr><cmd>echo "Auto-wrapping disabled"<cr>',
  { desc = "Disable auto wrap" }
)
vim.keymap.set(
  "n",
  "<leader>ea",
  '<cmd>setlocal formatoptions+=a<cr><cmd>setlocal textwidth=80<cr><cmd>echo "Auto-wrapping enabled"<cr>',
  { desc = "Enable auto wrap" }
)
