local M = {}

-- TSInstall
M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
    "terraform",
    "yaml",
    "hcl",
    "go",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
  highlight = {
    enable = true,
  },
}

-- MasonInstallAll
M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "yaml-language-server",
    "rust-analyzer",
    "gopls",
  },
}

-- git support in nvimtree
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

  view = {
    side = "right",
  },
}

return M
