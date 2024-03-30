return {
  "alexghergh/nvim-tmux-navigation",
  event = "VeryLazy",
  keys = {
    -- Navigation vim panes better & tmux
    { "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>" },
    { "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>" },
    { "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>" },
    { "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>" },
    { "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>" },
    { "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>" },
  },
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
