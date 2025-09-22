return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                styles = {
                    transparency = true, -- mantém os outros grupos "limpos"
                    italic = false,
                },
            })

            vim.cmd [[colorscheme rose-pine]]

            -- força fundo preto absoluto
            vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "LineNr", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })
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
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true
                }
            })

            -- vim.cmd.colorscheme("terafox")
        end
    },
    { "rebelot/kanagawa.nvim" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                transparent_background = true
            })

            -- vim.cmd.colorscheme("catppuccin")
        end
    },
    {
        'comfysage/evergarden',
        priority = 1000,
        config = function ()
            require("evergarden").setup({
                transparent_background = false,
                background_color = "#ffffff",
                variant = 'soft',
            })

            -- vim.cmd.colorscheme("evergarden")
        end
    }
}
