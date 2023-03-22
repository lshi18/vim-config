---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = false } },
    ["<leader>b"] = { "<cmd> noh <CR>", "noh", opts = { nowait = false } },
    ["<leader>h"] = { "<cmd> noh <CR>", "noh", opts = { nowait = false } },

    ["<leader>bb"] = { "<cmd> Telescope buffers <CR>", "list buffers", opt = { nowait = false } },
    ["<leader>bs"] = { "<cmd> w <CR>", "save buffer", opts = { nowait = false } },
    ["<leader>bn"] = { "<cmd> enew <CR>", "new buffer", opts = { nowait = false } },
    ["<leader>bk"] = { "<cmd> bp<bar>sp<bar>bn<bar>bd<CR>", "quit a buffer", opts = { nowait = false } },
    ["<leader>bK"] = { "<cmd> bp<bar>sp<bar>bn<bar>bd! <CR>", "quit(!) a buffer", opts = { nowait = false } },

    ["<leader>wwl"] = { "<C-l>", "window right", opts = { nowait = false, remap = true } },
    ["<leader>wwh"] = { "<C-h>", "window left", opts = { nowait = false, remap = true } },
    ["<leader>wwj"] = { "<C-j>", "window down", opts = { nowait = false, remap = true } },
    ["<leader>wwk"] = { "<C-k>", "window up", opts = { nowait = false, remap = true } },

    ["<leader>wwv"] = { "<cmd> vsplit <CR>", "new vertical window", opts = { nowait = false } },

    --["<leader>tnv"] = { "<leader>v", "window left", opts = {nowait = false, remap=true} },
    ["<leader>ss"] = { "<cmd> mksession! <CR>", "save current session", opt = { nowait = false } },
    ["<leader>rs"] = { "<cmd> source Session.vim <CR>", "restore last session", opts = { nowait = false } },

    ["<leader>tt"] = { "<C-n>", "toggle nvtreesitter", opts = { nowait = false, remap = true } },

    ["<leader>,"] = { "<C-i>", "go forward", opts = { nowait = false, remap = true } },
    ["<leader>."] = { "<C-o>", "go back", opts = { nowait = false, remap = true } },
  },
  t = {
    ["<Esc><Esc>"] = { "<C-x>", "escape terminal mode", opts = { nowait = false, remap = true } },
  },
}

-- more keybinds!

return M
