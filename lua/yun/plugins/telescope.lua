return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },
    config = function()
        local builtin = require("telescope.builtin")
        local telescope = require("telescope")
        local fb_actions = require("telescope._extensions.file_browser.actions")

        vim.keymap.set("n", "sf", builtin.find_files, {})
        vim.keymap.set("n", "sg", builtin.git_files, {})
        vim.keymap.set("n", "<space>e", ":Telescope file_browser<CR>", {})

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        [";g"] = function()
                            builtin.live_grep({})
                        end,
                    },
                },
            },
            extensions = {
                file_browser = {
                    theme = "ivy",
                    hijack_netrw = true,
                    hide_parent_dir = false,
                    group_empty = false,
                    previewer = false,
                    icons = false,
                    layout_config = {
                        width = { padding = 0 },
                        height = { padding = 0 },
                    },
                    mappings = {
                        ["i"] = {
                            ["<C-n>"] = fb_actions.create,
                            ["<C-d>"] = fb_actions.remove,
                            ["<C-r>"] = fb_actions.rename,
                            ["<C-m>"] = fb_actions.move,
                        },
                        ["n"] = {
                            ["n"] = fb_actions.create,
                            ["d"] = fb_actions.remove,
                            ["r"] = fb_actions.rename,
                            ["m"] = fb_actions.move,
                        },
                    },
                },
            },
        })

        telescope.load_extension("file_browser")
    end,
}
