require("yun.config.options")
require("yun.lazy")
require("yun.config.keymaps")
require("yun.config.autocmds")

local YunGroup = vim.api.nvim_create_augroup('Yun', {})
vim.api.nvim_create_autocmd('LspAttach',  {
    group = YunGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    end
})
