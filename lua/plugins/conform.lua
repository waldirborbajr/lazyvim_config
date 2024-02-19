return {
  {
    "stevearc/conform.nvim",
    formatters_by_ft = {
      lua = { "stylua" },
      go = { "gofmt", "gofumpt", "goimports", "golines" },
      markdown = { "prettier" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      rust = { "rustfmt" },
      toml = { "taplo" },
      sh = { "shfmt" },
      zsh = { "shfmt" },
      bash = { "shfmt" },
      -- Missing Markdownlint
      ["*"] = { "trim_whitespace", "trim_newlines" },
    },

    formatters = {
      shfmt = {
        prepend_args = { "-i", "2", "-ci" },
      },
      beautysh = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}
