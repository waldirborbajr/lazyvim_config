return {
  "alexghergh/nvim-tmux-navigation",
  event = "VeryLazy",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")
    nvim_tmux_nav.setup({
      disable_when_zoomed = true,
      -- defaults to false
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      },
    })
  end,
}
-- return {
--   {
--     "alexghergh/nvim-tmux-navigation",
--     event = "VeryLazy",
--     config = function()
--       local nvim_tmux_nav = require("nvim-tmux-navigation")
--
--       nvim_tmux_nav.setup({
--         disable_when_zoomed = true, -- defaults to false
--       })
--
--       vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
--       vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
--       vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
--       vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
--       vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
--       vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
--     end,
--   },
-- }
-- return {
--   "christoomey/vim-tmux-navigator",
--   cmd = {
--     "TmuxNavigateLeft",
--     "TmuxNavigateDown",
--     "TmuxNavigateUp",
--     "TmuxNavigateRight",
--     "TmuxNavigatePrevious",
--   },
--   keys = {
--     { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
--     { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
--     { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
--     { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
--     { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
--   },
-- }
