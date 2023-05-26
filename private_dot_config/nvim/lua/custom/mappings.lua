---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>tt"] = {
      function()
         require("base46").toggle_theme()
      end,
      "toggle transparency",
    },
  },
}

-- more keybinds!

return M
