return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  -- opts = {
  --   overrides = function()
  --     return {
  --       CursorLine = { bg = "#272733" },
  --       TabLineSel = { bg = "#957fb8" },
  --     }
  --   end,
  -- },
  init = function()
    vim.cmd.colorscheme("catppuccin-macchiato")
    vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#c6a0f7" })
  end,
}
