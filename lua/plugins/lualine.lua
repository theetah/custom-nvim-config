-- credit to shadmansaleh and glepnir for this lsp snippet, straight from evil_lualine
local lsp = {
  function()
    local msg = "No LSP Active"
    local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
    local clients = vim.lsp.get_clients()
    if next(clients) == nil then
      return "  " .. msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return "  " .. client.name
      end
    end
    return "  " .. msg
  end,
}

local filename_arrow = {
  function()
    return " "
  end,
  cond = function()
    return 0 ~= string.len(require("nvim-navic").get_location())
  end,
}

local navic = { "navic", color_correction = "dynamic", navic_opts = { highlight = true } }

local config = {
  options = {
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
    lualine_b = { "filename", filename_arrow, navic },
    lualine_c = {},
    lualine_x = {
      "filetype",
    },
    lualine_y = {
      lsp,
    },
    lualine_z = {
      "branch",
      { "progress", separator = { left = "", right = "" }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "branch" },
  },
  tabline = {},
  extensions = {},
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup(config)
  end,
}
