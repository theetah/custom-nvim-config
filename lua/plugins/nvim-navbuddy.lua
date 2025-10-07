--[[

NOTE: 
This plugin normally works fine when using the
SmiteshP origin. However, it is no longer being maintained.
There is another actively maintained plugin of the same name
under the origin hasansujon786, but this one has a small
spelling mistake in display.lua that causes the entire
plugin to break upon use.

--]]
return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "numToStr/Comment.nvim",
    "nvim-telescope/telescope.nvim",
    {
      "SmiteshP/nvim-navic",
      dependencies = {
        "neovim/nvim-lspconfig",
      },
      opts = {
        highlight = true,
        lsp = { auto_attach = true },
        icons = {
          Variable = " ",
          Boolean = " ",
          Object = " ",
          Class = " ",
          Field = " ",
        },
        separator = "   ",
      },
    },
  },

  config = function()
    -- have to set up as config function instead of passing an opts table
    -- because otherwise we can't require the two modules below
    local navbuddy = require("nvim-navbuddy")
    local actions = require("nvim-navbuddy.actions")
    local opts = {
      lsp = { auto_attach = true },
      window = {
        size = { width = "75%", height = "40%" },
        scrolloff = 2,
      },
      icons = {
        Variable = " ",
        Boolean = " ",
        String = " ",
        Object = " ",
        Class = " ",
        Field = " ",
      },
      mappings = {
        ["/"] = actions.telescope({ -- Fuzzy finder at current level.
          layout_config = { -- All options that can be
            height = 0.60, -- passed to telescope.nvim's
            width = 0.60, -- default can be passed here.
            prompt_position = "top",
            preview_width = 0.50,
          },
          layout_strategy = "horizontal",
        }),
      },
    }
    vim.keymap.set("n", "<leader>na", "<cmd>Navbuddy<CR>", { desc = "Open Navbuddy" })
    navbuddy.setup(opts)
  end,
}
