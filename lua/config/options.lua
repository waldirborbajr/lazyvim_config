-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.dap_virtual_text = true

-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Relative Numbers
vim.opt.relativenumber = true
-- vim.wo.number = true
vim.opt.nu = true

-- Other
vim.opt.title = true
vim.opt.laststatus = 2
vim.opt.inccommand = "split"
vim.opt.ignorecase = true

-- Enable mouse mode

vim.opt.mouse = "a"

-- Backup / Swap
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }

-- Shell used
vim.opt.shell = "zsh"
vim.opt.cmdheight = 1
vim.opt.showcmd = false

-- Tab magic
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- No Wrap lines
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Find files
vim.opt.path:append({ "**" })
-- Ignore Files
vim.opt.wildignore:append({
  -- Git
  "**/.git/*",
  -- Python
  "**/.pyc",
  -- Rust
  "**/target/",
  -- JS/TS
  "*/node_modules/*",
  -- Mobile
  "**/ios/*",
  "**/android/*",
})

-- obsidian conceallevel
vim.opt_local.conceallevel = 2

vim.opt.guicursor = {
  "n-v-c:block", -- Normal, visual, command-line: block cursor
  "i-ci-ve:ver25", -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
  "r-cr:hor20", -- Replace, command-line replace: horizontal bar cursor with 20% height
  "o:hor50", -- Operator-pending: horizontal bar cursor with 50% height
  "a:blinkwait700-blinkoff400-blinkon250", -- All modes: blinking settings
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
}

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.diagnostic.config({
  virtual_text = false,
  float = {
    border = "rounded",
  },
})
