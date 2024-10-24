return {
    {
	"hrsh7th/nvim-cmp",

	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    "onsails/lspkind.nvim",
	},

	config = function()
	    local cmp = require("cmp")

	    cmp.setup({
		sources = {
		    {
			name = "nvim_lsp",
		    }
		},

		formatting = {
		    format = require("lspkind").cmp_format({
			mode = "symbol_text",
			max_width = 50,
		    })
		},

		mapping = cmp.mapping.preset.insert({
		    ["<Cr>"] = cmp.mapping.confirm({ select = true })
		}),
	    })
	end
    }
}
