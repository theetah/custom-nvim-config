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
            },
        },
    },
    opts = {
        lsp = { auto_attach = true },
        window = {
            size = { width = "75%", height = "40%" },
            scrolloff = 2,
        },
        icons = {
            Variable = "󰫧 ",
        },
    },
}
