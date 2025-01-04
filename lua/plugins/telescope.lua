return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "sf", builtin.find_files, {})
    vim.keymap.set("n", "sg", builtin.git_files, {})

    require("telescope").setup({
      defaults = {
        mappings = {
          n = {
            [";g"] = function()
              builtin.live_grep({})
            end,
          },
        },
      },
    })
  end,
}
