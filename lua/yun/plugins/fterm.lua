return {
    'numToStr/FTerm.nvim',
    event = { "VeryLazy" },
    config = function()
        local is_windows = vim.loop.os_uname().sysname:match("Windows")

        local shell = nil

        if is_windows then
            shell = vim.fn.executable('pwsh.exe') == 1 and 'pwsh.exe' or 'powershell.exe'
        end

        require('FTerm').setup({
            cmd = shell,
        })

        vim.api.nvim_set_keymap('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { noremap = true, silent = true })
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Enter Normal Mode in Terminal" })
    end
}
