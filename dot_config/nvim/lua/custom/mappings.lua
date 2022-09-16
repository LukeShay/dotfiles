local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },
}

M.navigation = {
  n = {
    ["H"] = { "^", "beginning of line" },
    ["L"] = { "$", "end of line" },
  }
}

return M
