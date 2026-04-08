return
{
    "hrsh7th/nvim-cmp",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "onsails/lspkind.nvim",
    },

    config = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")

        cmp.setup({
             sources = cmp.config.sources({
                 { name = "nvim_lsp" },
                 { name = "luasnip" },
                 { name = "path" },
             }, {
                 { name = 'buffer' },
             }),
             mapping = cmp.mapping.preset.insert({
                 ['<tab>'] = cmp.mapping.scroll_docs(-4),
                 ['<C-tab>'] = cmp.mapping.scroll_docs(4),
                 ['<C-e>'] = cmp.mapping.abort(),
                 ['<CR>'] = cmp.mapping.confirm({ select = true }),
             }),
             window = {
                 completion = cmp.config.window.bordered({ border = "rounded" }),
                 documentation = cmp.config.window.bordered({ border = "rounded" }),
             },
             formatting = {
                 format = lspkind.cmp_format({
                     mode = "symbol_text",
                     ellipsis_char = "...",
                     before = function(_, item)
                         return item
                     end,
                 }),
             },
        })

        cmp.setup.cmdline('/', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            }
        })
    end
}
