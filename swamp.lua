-- Credits to original https://github.com/morhetz/gruvbox
-- Customised to swamp.nvim by masroof-maindak.

local M = {}

M.base_30 = {
  white = "#ebe0bb",
  darker_black = "#211d13",
  black = "#242015", --  nvim bg
  black2 = "#3a3124",
  one_bg = "#4d3f32",
  one_bg2 = "#4d3f32",
  one_bg3 = "#5f4e41",
  grey = "#725c4f",
  grey_fg = "#856a5d",
  grey_fg2 = "#856a5d",
  light_grey = "#9f8875",

  green = "#7a7653",
  red = "#c1666b",
  nord_blue = "#db930d",
  blue = "#91506c",
  purple = "#508991",

  baby_pink = "#b05d51",
  pink = "#c1666b",
  line = "#4d3f32", -- for lines like vertsplit
  vibrant_green = "#736f4e",
  yellow = "#e69a0e",
  sun = "#db930d",
  dark_purple = "#80465f",
  teal = "#508991",
  orange = "#b06733",
  cyan = "#61a0a8",
  statusline_bg = "#3a3124",
  lightbg = "#4d3f32",
  pmenu_bg = "#61A0A8",
  folder_bg = "#e69a0e",
}

M.base_16 = {
  base00 = "#242015",
  base01 = "#3A3124",
  base02 = "#4d3f32",
  base03 = "#5f4e41",
  base04 = "#B8A58C",
  base05 = "#D2C3A4",
  base06 = "#ebe0bb",
  base07 = "#F1E9D0",
  base08 = "#a82d56",
  base09 = "#b06733",
  base0A = "#db930d",
  base0B = "#7a7653",
  base0C = "#61a0a8",
  base0D = "#91506C",
  base0E = "#b05d61",
  base0F = "#ba6d36",
}

M.type = "dark"

M = require("base46").override_theme(M, "swamp")

M.polish_hl = {
  Operator = {
    fg = M.base_30.nord_blue,
  },

  ["@operator"] = {
    fg = M.base_30.nord_blue,
  },
}

return M
