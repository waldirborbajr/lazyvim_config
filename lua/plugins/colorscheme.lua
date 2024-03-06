return {
  {
    "catppuccin",
    opts = {
      -- https://www.reddit.com/r/neovim/comments/18eobbj/transparency_catppuccin_with_lazyvim_not_working/
      flavour = "macchiato", -- Flavour must be one of: latte, frappe, macchiato, mocha
    },
  },

  -- add gruvbox
  { "wittyjudge/gruvbox-material.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
