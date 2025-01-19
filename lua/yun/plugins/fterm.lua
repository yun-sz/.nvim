return {
    'numToStr/FTerm.nvim',
    event = { "VeryLazy" },
    config = function()
        require('FTerm').setup({
            cmd = "powershell",
            border = 'single',
            dimensions = {
                height = .9,
                width = .9
            }
        })
        vim.api.nvim_set_keymap('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Enter Normal Mode in Terminal" })
        -- vim.api.nvim_set_keymap('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
    end
}

