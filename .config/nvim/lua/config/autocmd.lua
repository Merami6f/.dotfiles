


-- NOTE: read :h autocommand
-- NOTE: read :h events
-- NOTE: autocmd [grup] event pattren command

local custom_buffer = vim.api.nvim_create_augroup("MyGroup", { clear = false })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = custom_buffer,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})



local lsp_grup = vim.api.nvim_create_augroup("lspGrup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  group = lsp_grup,
  bufnr = bufnr,
  callback = function()
    vim.lsp.buf.format({ async = false })
  end
})
