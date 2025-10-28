return {
  "deparr/tairiki.nvim",
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
  opts = {
    palette = "tomorrow",
  },
  init = function()
    vim.cmd.colorscheme("tairiki")
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#484c54" })
    vim.api.nvim_set_hl(0, "IndentBlanklineUnfocused", { fg = "#323332" })
    vim.api.nvim_set_hl(0, "IndentBlanklineFocused", { fg = "#858886" })
  end,
}
