local overrides = require "custom.plugins.overrides"

return {

  ----------------------------------------- default plugins ------------------------------------------

  ["goolord/alpha-nvim"] = {
    disable = false,
    -- cmd = "Alpha",
    override_options = overrides.alpha,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = overrides.blankline,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  --------------------------------------------- sid plugins ----------------------------------------------

  -- autoclose tags in html, jsx only
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- distraction free modes
  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- notes & todo stuff
  ["nvim-neorg/neorg"] = {
    tag = "0.0.12",
    ft = "norg",
    after = "nvim-treesitter",
    setup = function()
      require("custom.plugins.neorg").autocmd()
    end,
    config = function()
      require("custom.plugins.neorg").setup()
    end,
  },

  -- basic diagrams for flow charts etc
  ["jbyuki/venn.nvim"] = {
    module = "venn.nvim",
    config = function()
      require("custom.plugins.venn").setup()
    end,
  },
}
