-- return {
--   {
--     "catppuccin",
--     opts = {
--       -- https://www.reddit.com/r/neovim/comments/18eobbj/transparency_catppuccin_with_lazyvim_not_working/
--       transparent_background = true,
--       flavour = "frappe",
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }

return {
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
