return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    -- lazy = true,
    event = "VeryLazy",
    ft = "markdown",
    dependencies = { -- optional packages
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "Notes",
          path = "~/wks/2ndBrain",
        },
      },
      completion = {
        -- Set to false to disable completion.
        nvim_cmp = true,

        -- Trigger completion at 2 chars.
        min_chars = 2,

        -- Where to put new notes created from completion. Valid options are
        --  * "current_dir" - put new notes in same directory as the current buffer.
        --  * "notes_subdir" - put new notes in the default notes subdirectory.
        new_notes_location = "current_dir",

        -- Control how wiki links are completed with these (mutually exclusive) options:
        --
        -- 1. Whether to add the note ID during completion.
        -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
        -- Mutually exclusive with 'prepend_note_path' and 'use_path_only'.
        prepend_note_id = true,
        -- 2. Whether to add the note path during completion.
        -- E.g. "[[Foo" completes to "[[notes/foo|Foo]]" assuming "notes/foo.md" is the path of the note.
        -- Mutually exclusive with 'prepend_note_id' and 'use_path_only'.
        prepend_note_path = false,
        -- 3. Whether to only use paths during completion.
        -- E.g. "[[Foo" completes to "[[notes/foo]]" assuming "notes/foo.md" is the path of the note.
        -- Mutually exclusive with 'prepend_note_id' and 'prepend_note_path'.
        use_path_only = false,
      },
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      finder = "telescope.nvim",
      finder_mappings = {
        -- Create a new note from your query with `:ObsidianSearch` and `:ObsidianQuickSwitch`.
        -- Currently only telescope supports this.
        new = "<C-x>",
      },
      -- dir = "~/wks/2ndBrain/Annotation",
      -- disable_frontmatter = true,
      -- completion = {
      --   nvim_cmp = true,
      -- },
    },
  },
}
