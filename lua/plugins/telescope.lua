return {
  {
    "nvim-telescope/telescope-symbols.nvim",
    keys = {
      {
        "<leader>fs",
        "<cmd>Telescope symbols<cr>",
        desc = "Telescope symbols",
      },
      {
        "<leader>fp",
        "<cmd>Telescope live_grep<cr>",
        desc = "Telescope Live Grep",
      },
    },

    -- apply the config and additionally load fzf-native
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("import")
      telescope.load_extension("live_grep_args")
      telescope.load_extension("package_info")
      telescope.load_extension("smart_goto")
      telescope.load_extension("smart_open")
      telescope.load_extension("undo")
      telescope.load_extension("zf-native")
    end,

    opts = {
      defaults = {
        file_ignore_patterns = { ".git/", "node_modules" },
        layout_config = {
          height = 0.90,
          width = 0.90,
          preview_cutoff = 0,
          horizontal = { preview_width = 0.60 },
          vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
          prompt_position = "top",
        },
        path_display = { "smart" },
        prompt_position = "top",
        prompt_prefix = " ",
        selection_caret = " ",
        sorting_strategy = "ascending",
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--hidden",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--trim", -- add this value
        },
      },
      pickers = {
        buffers = {
          prompt_prefix = "󰸩 ",
        },
        commands = {
          prompt_prefix = " ",
          layout_config = {
            height = 0.63,
            width = 0.78,
          },
        },
        command_history = {
          prompt_prefix = " ",
          layout_config = {
            height = 0.63,
            width = 0.58,
          },
        },
        git_files = {
          prompt_prefix = "󰊢 ",
          show_untracked = true,
        },
        find_files = {
          prompt_prefix = " ",
          find_command = { "fd", "-H" },
        },
        live_grep = {
          prompt_prefix = "󰱽 ",
        },
        grep_string = {
          prompt_prefix = "󰱽 ",
        },
      },
      extensions = {
        ["zf-native"] = {
          file = { -- options for sorting file-like items
            enable = true, -- override default telescope file sorter
            highlight_results = true, -- highlight matching text in results
            match_filename = true, -- enable zf filename match priority
          },
          generic = { -- options for sorting all other items
            enable = true, -- override default telescope generic item sorter
            highlight_results = true, -- highlight matching text in results
            match_filename = false, -- disable zf filename match priority
          },
        },
        smart_open = {
          cwd_only = true,
          filename_first = true,
        },
      },
    },
  },
}
