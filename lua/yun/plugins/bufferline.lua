return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        numbers = "none",
        separator_style = "slant",
        diagnostics = "nvim_lsp",
      },
    })
  end,
}
