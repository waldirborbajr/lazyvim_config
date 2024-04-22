return {
  "Lilja/zellij.nvim",
  enabled = false,
  -- If you want to configure the plugin
  config = function()
    require("zellij").setup({
      path = "$HOME/.cargo/bin/zellij", -- Zellij binary path
      vimTmuxNavigatorKeybinds = true, -- Will set keybinds like <C-h> to left
    })
  end,
}
-- return {
--   "swaits/zellij-nav.nvim",
--   lazy = true,
--   enabled = false,
--   event = "VeryLazy",
--   keys = {
--     { "<c-h>", "<cmd>ZellijNavigateLeft<cr>", { silent = true, desc = "navigate left" } },
--     { "<c-j>", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "navigate down" } },
--     { "<c-k>", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "navigate up" } },
--     { "<c-l>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right" } },
--   },
--   opts = {},
-- }
