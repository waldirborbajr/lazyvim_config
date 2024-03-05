return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt", "gofumpt", "goimports", "golines" },
        markdown = { "prettier" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        rust = { "rustfmt" },
        toml = { "taplo" },
        sh = { "shfmt" },
        python = { "black" },
        zsh = { "shfmt" },
        bash = { "shfmt" },
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
  },
}
