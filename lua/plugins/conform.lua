return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    --  for users those who want auto-save conform + lazyloading!
    event = "BufWritePre",
    keys = {
      -- stylua: ignore
      { '=', function() require('conform').format { async = true, lsp_fallback = true } end, mode = '', desc = 'Format buffer' },
    },
    opts = {
      -- format_on_save = {
      --   async = false,
      --   timeout_ms = 500,
      --   quiet = false,
      --   lsp_fallback = true,
      -- },

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
  },
}
