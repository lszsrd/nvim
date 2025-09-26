return
{
    "hrsh7th/nvim-cmp",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "onsails/lspkind.nvim",
    },

    config = function()
        local cmp = require("cmp")

        cmp.setup({
            sources = {
                { name = "nvim_lsp", },
                { name = "buffer" }
            },

            formatting = {
                format = require("lspkind").cmp_format({
                    mode = "symbol_text",
                    maxwidth = {
                        menu = 50,
                        abbr = 50,
                    },
                    show_labelDetails = true,
                    before = function (entry, vim_item)
                        return vim_item
                    end
                })
            },

            mapping = cmp.mapping.preset.insert({
                ["<Cr>"] = cmp.mapping.confirm({ select = true })
            })
        })

        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({{ name = 'path' }},
            {
                {
                    name = 'cmdline',
                    option = {
                        ignore_cmds = { 'Man', '!' }
                    }
                }
            })
        })
    end
}
