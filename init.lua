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
