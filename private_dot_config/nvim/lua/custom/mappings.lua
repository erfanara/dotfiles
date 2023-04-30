local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },
}

M.venn = {
  n = {
    ["vn"] = {
      function()
        require("packer").loader "venn.nvim"
        require("custom.plugins.venn").toggle_maps()
      end,
      "toggle venn mappings",
    },
  },
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}

return M
