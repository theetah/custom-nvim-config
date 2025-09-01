return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  opts = {
    overrides = function()
      return {
        CursorLine = { bg = "#272733" },
        TabLineSel = { bg = "#957fb8" },
      }
    end,
  },
  init = function()
    vim.cmd.colorscheme("kanagawa")
    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
  end,
}
