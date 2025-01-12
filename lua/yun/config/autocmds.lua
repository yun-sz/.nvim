vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.vue" },
  callback = function()
    vim.cmd("EslintFixAll")
  end,
})


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
