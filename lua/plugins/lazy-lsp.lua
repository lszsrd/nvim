return
{
    "dundalek/lazy-lsp.nvim",

    dependencies = {
	{
	    "neovim/nvim-lspconfig", tag = "v2.5.0"
	},
        {
            "VonHeikemen/lsp-zero.nvim", branch = "v3.x"
        },
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    },

    config = function()
        require("lazy-lsp").setup {
            excluded_servers = {
                "ccls", "sourcekit",
            },

            prefer_local = true,
        }
    end
}
