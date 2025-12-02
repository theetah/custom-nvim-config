return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    attach_mode = "global",
    highlight_on_hover = true,
    autojump = true,
  },
  init = function()
    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")
    -- optionally, use "AerialToggle!" for same effect, but cursor stays in current window
  end,
}
