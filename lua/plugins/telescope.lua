return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    keys = {
      {
        "<leader>fs",
        "<cmd>Telescope symbols<cr>",
        desc = "Telescope symbols",
      },
    },
  },
}
