return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        window = {
            position = "left",
            width = 30,
        },
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
                ".git",
                ".DS_Store",
            },
            always_show = {
                ".gitignore",
                ".env",
            }
        }
    },
}
