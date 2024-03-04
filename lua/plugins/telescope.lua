return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("fzf")
    end,
    keys = {
      {
        "<leader>fm",
        function()
          require("telescope.builtin").marks({ hidden = true })
        end,
        desc = "Telescope marks",
      },
    },
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
