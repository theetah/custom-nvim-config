return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    {
      "SmiteshP/nvim-navic",
      dependencies = {
        "neovim/nvim-lspconfig",
      },
      opts = {
        highlight = true,
        lsp = { auto_attach = true },
      },
    },
    "MunifTanjim/nui.nvim",
    "numToStr/Comment.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    lsp = { auto_attach = true },
  },
}
