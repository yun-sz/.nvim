return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function()
        require("bufferline").setup({
            options = {
                numbers = "none",
                separator_style = "none",
                diagnostics = "nvim_lsp",
            },
        })
    end,
}
