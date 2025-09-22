return {
    'numToStr/FTerm.nvim',
    event = { "VeryLazy" },
    config = function()
        require('FTerm').setup({})

        vim.api.nvim_set_keymap('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Enter Normal Mode in Terminal" })
    end
}
