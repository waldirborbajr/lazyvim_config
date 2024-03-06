return {
  "folke/zen-mode.nvim",
  keys = {
    {
      "<leader>z",
      "<cmd>ZenMode<CR>",
      { desc = "Toggle Zen Mode" },
    },
  },
  event = "VeryLazy",
  opts = {
    window = {
      width = 100,
    },
    plugins = {
      options = {
        laststatus = 3,
      },
    },
  },
}
