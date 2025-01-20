vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.vue" },
  callback = function()
        if vim.fn.exists(":EslintFixAll") == 2 then
            vim.cmd("EslintFixAll")
        elseif vim.fn.executable("prettier") == 1 then
            vim.cmd(string.format("silent !prettier --write %s", vim.fn.shellescape(vim.fn.expand("%:p"))))
        end
    end,
})


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
