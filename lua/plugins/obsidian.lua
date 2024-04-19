return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "hrsh7th/nvim-cmp",
    -- "nvim-telescope/telescope.nvim",
    -- "nvim-treesitter/nvim-treesitter",
    -- "preservim/vim-markdown",
  },

  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "2ndBrain",
          path = "$HOME/wks/2ndBrain",
        },
      },
      notes_subdir = "inbox",
      new_notes_location = "notes_subdir",

      disable_frontmatter = true,
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M:%S",
      },

      -- name new notes starting the ISO datetime and ending with note name
      -- put them in the inbox subdir
      -- note_id_func = function(title)
      --   local suffix = ""
      --   -- get current ISO datetime with -5 hour offset from UTC for EST
      --   local current_datetime = os.date("!%Y-%m-%d-%H%M%S", os.time() - 5*3600)
      --   if title ~= nil then
      --     suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      --   else
      --     for _ = 1, 4 do
      --       suffix = suffix .. string.char(math.random(65, 90))
      --     end
      --   end
      --   return current_datetime .. "_" .. suffix
      -- end,

      -- key mappings, below are the defaults
      mappings = {
        -- overrides the 'gf' mapping to work on markdown/wiki links within your vault
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        -- toggle check-boxes
        -- ["<leader>ch"] = {
        --   action = function()
        --     return require("obsidian").util.toggle_checkbox()
        --   end,
        --   opts = { buffer = true },
        -- },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
    })
  end,
}
