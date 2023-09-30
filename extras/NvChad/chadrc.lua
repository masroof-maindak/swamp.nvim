---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "swamp",

  hl_override = {
    NvDashAscii = {
      fg = "yellow",
      bg = "black",
    },

    NvDashButtons = {
      fg = "yellow",
      bg = "black2",
    },
  },

  nvdash = {
    load_on_startup = true,

    header = {
      "        𓆝   𓆟   𓆞            ",
      "rest your head upon my clavicle",
      "i'll hold you by my side,",
      "at least this still feels magical",
      "at least you're still alive.",
    },

    buttons = {
      { "find file", "<spc> f f", "Telescope find_files" },
      { "recent files", "<spc> f o", "Telescope oldfiles" },
      { "find word", "<spc> f w", "Telescope live_grep" },
      { "bookmarks", "<spc> m a", "Telescope marks" },
    },
  },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    overriden_modules = nil,
  },
}

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

return M