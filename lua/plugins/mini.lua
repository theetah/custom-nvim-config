return { -- Collection of various small independent plugins/modules
  "nvim-mini/mini.nvim",
  config = function()
    local wk = require("which-key")
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require("mini.ai").setup({ n_lines = 500 })

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require("mini.surround").setup()

    --[[
    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return "%2l:%-2v"
    end
    ]]

    -- Tabline
    require("mini.tabline").setup()
    -- Tabline keymaps
    vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "next buffer" })
    vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "previous buffer" })
    vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "delete current buffer" })
    -- Tabline highlight changes

    -- - `MiniTablineCurrent` - buffer is current (has cursor in it).
    -- - `MiniTablineVisible` - buffer is visible (displayed in some window).
    -- - `MiniTablineHidden` - buffer is hidden (not displayed).
    -- - `MiniTablineModifiedCurrent` - buffer is modified and current.
    -- - `MiniTablineModifiedVisible` - buffer is modified and visible.
    -- - `MiniTablineModifiedHidden` - buffer is modified and hidden.
    -- - `MiniTablineFill` - unused right space of tabline.
    -- - `MiniTablineTabpagesection` - section with tabpage information.
    -- - `MiniTablineTrunc` - truncation symbols indicating more left/right tabs.

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
