--[[
-- The implementation and appearance of this
-- theme is heavily based off of the "bubbles"
-- theme present on the github page for lualine.
--]]

local colors = {
  white = "#c5c8c6",
  blue = "#81a2be",
  yellow = "#f0c674",
  green = "#b5bd68",
  black = "#151515",
  gray = "#2b2e30",
  darker_gray = "#1d1f21",
  purple = "#b294bb",
  red = "#cc6666",
}

local theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.darker_gray },
  },

  insert = { a = { fg = colors.black, bg = colors.green } },
  command = { a = { fg = colors.black, bg = colors.yellow } },
  visual = { a = { fg = colors.black, bg = colors.purple } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white, bg = colors.black },
  },
}

local config = {
  options = {
    theme = theme,
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
    lualine_b = { "filename" },
    lualine_c = { "branch" },
    lualine_x = { "filetype" },
    lualine_y = { "progress" },
    lualine_z = {
      { "location", separator = { right = "" }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
  tabline = {},
  extensions = {},
}

return config
