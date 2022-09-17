local cmp = require("cmp")

local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
    ["<Tab>"] = function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         else
            fallback()
         end
      end,
  },
}

M.navigation = {
  n = {
    ["H"] = { "^", "beginning of line" },
    ["L"] = { "$", "end of line" },
  }
}

return M
