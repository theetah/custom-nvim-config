return {
  "RRethy/base16-nvim",
  -- name = "catppuccin",
  priority = 1000,
  -- opts = {
  --   overrides = function()
  --     return {
  --       CursorLine = { bg = "#272733" },
  --       TabLineSel = { bg = "#957fb8" },
  --     }
  --   end,
  -- },
  -- opts = {
  --   palette = "tomorrow",
  --   plugins = {
  --     all = true,
  --   },
  -- },
  config = function()
    vim.cmd.colorscheme("base16-tomorrow-night")
    -- indent-blankline
    vim.api.nvim_set_hl(0, "IndentBlanklineUnfocused", { fg = "#323332" })
    vim.api.nvim_set_hl(0, "IndentBlanklineFocused", { fg = "#858886" })
    -- nvim-cmp
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#323435", fg = "#81a2be" })
  end,
}
