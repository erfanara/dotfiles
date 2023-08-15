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
    ["<F4>"] = {
      function()
        require("dapui").toggle()
      end,
      "toggle dap-ui",
    },
    ["<F5>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "toggle breakpoint",
    },
  },
}

-- more keybinds!

return M
