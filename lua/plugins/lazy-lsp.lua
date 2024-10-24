return {
    {
	"dundalek/lazy-lsp.nvim",

	dependencies = {
	    "VonHeikemen/lsp-zero.nvim",
	    "neovim/nvim-lspconfig",
	},

	config = function ()
	    local lspzero = require("lsp-zero")

	    lspzero.on_attach(function(client, bufnr)
		lspzero.default_keymaps({
		    buffer = bufnr,
		    preserve_mappings = false
		})
	    end)

	    require("lazy-lsp").setup({})
	end
    }
}
