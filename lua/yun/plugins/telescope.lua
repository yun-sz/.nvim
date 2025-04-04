return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        local builtin = require("telescope.builtin")
        local telescope = require("telescope")

        vim.keymap.set("n", "sf", builtin.find_files, {})
        vim.keymap.set("n", "sg", builtin.live_grep, {})

        telescope.setup({
            defaults = {
                layout_strategy = 'vertical',
                layout_config = {
                    vertical = {
                        mirror = true,
                    },
                },
                sorting_strategy = 'ascending',
                mappings = {
                    n = {
                        [";g"] = function()
                            builtin.git_files({})
                        end,
                    },
                },
            },
        })
    end,
}
