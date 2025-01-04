return {
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
    keys = {
      { "<C-j>", vim.diagnostic.goto_next, mode = "n" },
      { "<C-p>", vim.diagnostic.goto_prev, mode = "n" },
      { "<C-k>", vim.diagnostic.open_float, mode = "n" },
    },
  },
}
