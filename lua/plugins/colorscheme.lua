return {
  --   {
  --     "catppuccin",
  --     opts = {
  --       -- https://www.reddit.com/r/neovim/comments/18eobbj/transparency_catppuccin_with_lazyvim_not_working/
  --       flavour = "frappe",
  --     },
  --   },

  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
