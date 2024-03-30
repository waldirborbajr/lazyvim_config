-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local Util = require("lazyvim.util")

-- Silently move Lines
-- Already exists into Lazyvim default config
-- vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
-- vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
-- vim.keymap.set("v", "<A-j>", "<cmd>m '>+1<cr>gv=gv", { desc = "Move down" })
-- vim.keymap.set("v", "<A-k>", "<cmd>m '<-2<cr>gv=gv", { desc = "Move up" })
-- vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
-- vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
--
-- better indenting
-- vim.keymap.set("v", "<", "<gv", { desc = "Indent right" })
-- vim.keymap.set("v", ">", ">gv", { desc = "Indent left" })
--
-- floating terminal
-- vim.keymap.set("n", "<leader>ft", function()
--   Util.terminal.open(nil, { cwd = Util.root.get(), border = "rounded", size = { width = 0.7, height = 0.7 } })
-- end, { desc = "Terminal (root dir)" })
-- vim.keymap.set("n", "<leader>fT", function()
--   Util.terminal.open(nil, { border = "rounded", size = { width = 0.7, height = 0.7 } })
-- end, { desc = "Terminal (cwd)" })
-- vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

vim.keymap.set("n", "<Tab>", "<cmd>bn<cr>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bp<cr>")

-- Escape in insert mode
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("i", "jk", "<esc>")

-- files
vim.keymap.set("n", "!!", ":qa!<enter>", { desc = "" })
vim.keymap.set("n", "QQ", ":q!<enter>", { desc = "" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "WW", ":w!<enter>", { desc = "" })
vim.keymap.set("n", "E", "$", { desc = "" })
vim.keymap.set("n", "B", "^", { desc = "" })
vim.keymap.set("n", "td", ":TodoTelescope<CR>", { desc = "" })
vim.keymap.set("n", "<leader>rs", ":%s/", { desc = "" })
vim.keymap.set("n", "<leader>rw", ":%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "" })
vim.keymap.set("n", "gh", "<cmd>OpenGithubRepo<cr>", { desc = "" })

-- Custom navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "" })
vim.keymap.set("n", "<C-f>", "<C-f>zz", { desc = "" })
vim.keymap.set("n", "<C-b>", "<C-b>zz", { desc = "" })
-- vim.keymap.set("n", "<C-k>", "10k", { desc = "" })
-- vim.keymap.set("n", "<C-j>", "10j", { desc = "" })
-- vim.keymap.set("n", "<C-Up>", "10k", { desc = "" })
-- vim.keymap.set("n", "<C-Down>", "10j", { desc = "" })

-- Quickfix navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Alternative way to save and exit in Normal mode.
-- NOTE: Adding `redraw` helps with `cmdheight=0` if buffer is not modified
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<Cmd>silent! update | redraw<CR>", { desc = "Save" })
vim.keymap.set({ "i", "x" }, "<C-s>", "<Esc><Cmd>silent! update | redraw<CR>", { desc = "Save and go to Normal mode" })

vim.keymap.set("n", "<C-q>", ":q<cr>", { desc = "" })

-- new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv",{ desc = "" })
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "" })
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv",{ desc = "" })
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "" })

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

-- surrounding words
vim.keymap.set("n", "<leader>wsq", 'ciw""<Esc>P', { desc = "Word Surround Quotes" })

-- Delete to void register
vim.keymap.set({ "n", "v" }, "<leader>D", [["_d]])

-- and these are for searching
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "*", "*zz")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- folds
vim.keymap.set("n", "<leader>z", "<cmd>normal! zMzv<cr>", { desc = "Fold all others" })

vim.keymap.set("v", "<C-s>", "<cmd>sort<CR>") -- Sort highlighted text in visual mode with Control+S
vim.keymap.set("v", "<leader>rr", '"hy:%s/<C-r>h//g<left><left>') -- Replace all instances of highlighted words
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up

-- buffer
vim.keymap.set(
  "n",
  "<leader>bb",
  "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
  { desc = "Telescope buffers" }
)
