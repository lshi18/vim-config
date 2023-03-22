local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

--vim.cmd("source Session.vim")

autocmd("BufWrite", {
  pattern = "*",
  command = "%s/\\s\\+$//ge",
})

-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#workaround-when-using-rmagattiauto-session
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "NvimTree*",
  callback = function()
    local view = require "nvim-tree.view"
    local is_visible = view.is_visible()

    local api = require "nvim-tree.api"
    if not is_visible then
      api.tree.open()
    end
  end,
})
