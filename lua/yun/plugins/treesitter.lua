return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "javascript",
      "typescript",
      "go",
      "lua",
      "regex",
      "vue",
      "json",
      "scss",
    },
    highlight = {
        enabled = true
    }
  },
}
