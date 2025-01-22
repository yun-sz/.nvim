return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    transparency = true,
                    italic = false,
                },
            })

            -- vim.cmd [[colorscheme rose-pine]]
        end,
    },
    {
        "tiagovla/tokyodark.nvim",
        opts = {
            transparent_background = true,
            styles = {
                comments = { italic = false },
                keywords = { italic = false },
                identifiers = { italic = false },
                functions = {},
                variables = {},
            }
        },
        config = function(_, opts)
            require("tokyodark").setup(opts)
            -- vim.cmd [[colorscheme tokyodark]]
        end,
    },
    {
        "ficcdaf/ashen.nvim",
        config = function()
           -- vim.cmd[[colorscheme ashen]]
        end
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true
                }
            })

            vim.cmd.colorscheme("terafox")
        end
    },
    { "rebelot/kanagawa.nvim" }
}
