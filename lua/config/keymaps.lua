-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

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

map("i", "jj", "<Esc>", { desc = "" })

-- files
map("n", "!!", ":qa!<enter>", { desc = "" })
map("n", "QQ", ":q!<enter>", { desc = "" })
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "WW", ":w!<enter>", { desc = "" })
map("n", "E", "$", { desc = "" })
map("n", "B", "^", { desc = "" })
map("n", "TT", ":TransparentToggle<CR>", { desc = "" })
map("n", "st", ":TodoTelescope<CR>", { desc = "" })
map("n", "<leader>ss", ":%s/", { desc = "" })
map("n", "<leader>rw", ":%s/<<C-r><C-w>>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "" })
map("n", "gh", "<cmd>OpenGithubRepo<cr>", { desc = "" })

-- Custom navigation
map("n", "<C-d>", "<C-d>zz", { desc = "" })
map("n", "<C-u>", "<C-u>zz", { desc = "" })
map("n", "<C-f>", "<C-f>zz", { desc = "" })
map("n", "<C-b>", "<C-b>zz", { desc = "" })
map("n", "<C-k>", "10k", { desc = "" })
map("n", "<C-Up>", "10k", { desc = "" })
map("n", "<C-j>", "10j", { desc = "" })
map("n", "<C-Down>", "10j", { desc = "" })

-- Alternative way to save and exit in Normal mode.
-- NOTE: Adding `redraw` helps with `cmdheight=0` if buffer is not modified
map("n", "<C-s>", "<Cmd>silent! update | redraw<CR>", { desc = "Save" })
map({ "i", "x" }, "<C-s>", "<Esc><Cmd>silent! update | redraw<CR>", { desc = "Save and go to Normal mode" })

map("n", "<C-q>", ":q<cr>", { desc = "" })

-- better indenting
map("v", "<", "<gv", { desc = "Indent right" })
map("v", ">", ">gv", { desc = "Indent left" })

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- map("v", "J", ":m '>+1<CR>gv=gv",{ desc = "" })
map("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "" })
-- map("v", "K", ":m '<-2<CR>gv=gv",{ desc = "" })
map("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "" })

-- obsidian
map("n", "<leader>oo", "<cmd>ObsidianBacklinks<cr>", { desc = "Obsidian Backlinks" })
map("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Obsidian New Note" })
map("n", "<leader>ot", "<cmd>ObsidianToday<cr>", { desc = "Obsidian Today" })
map("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>", { desc = "Obsidian Yesterday" })
map("n", "<leader>or", "<cmd>ObsidianTomorrow<cr>", { desc = "Obsidian Tomorrow" })

-- markdown
map(
  "n",
  "<leader>da",
  '<cmd>setlocal formatoptions-=a<cr><cmd>setlocal textwidth=0<cr><cmd>echo "Auto-wrapping disabled"<cr>',
  { desc = "Disable auto wrap" }
)
map(
  "n",
  "<leader>ea",
  '<cmd>setlocal formatoptions+=a<cr><cmd>setlocal textwidth=80<cr><cmd>echo "Auto-wrapping enabled"<cr>',
  { desc = "Enable auto wrap" }
)

-- buffers
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- floating terminal
map("n", "<leader>ft", function()
  Util.terminal.open(nil, { cwd = Util.root.get() })
end, { desc = "Terminal (root dir)" })
map("n", "<leader>fT", function()
  Util.terminal.open()
end, { desc = "Terminal (cwd)" })
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
