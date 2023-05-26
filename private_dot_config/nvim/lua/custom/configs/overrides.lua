local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "html",
    "css",
    "javascript",
    "json",
    "toml",
    "markdown",
    "c",
    "go",
    "bash",
    "lua",
    "norg",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- M.mason = {
--   ensure_installed = {
--     -- lua stuff
--     "lua-language-server",
--     "stylua",
--
--     -- web dev
--     "css-lsp",
--     "html-lsp",
--     "typescript-language-server",
--     "deno",
--     "emmet-ls",
--     "json-lsp",
--
--     -- shell
--     "shfmt",
--     "shellcheck",
--   },
-- }
return M
