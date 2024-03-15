return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>E",
      "<cmd>Neotree<cr>",
      desc = "Nee-Tree File Manager",
    },
  },
  opts = function(_, opts)
    opts.window.mappings.o = "open"
    opts.window.width = 27
  end,
}
