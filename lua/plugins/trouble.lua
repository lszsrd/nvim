return
{
    "folke/trouble.nvim",

    opts = {},
    cmd = "Trouble",
    keys = {
	{
	    "<leader>gg",
	    "<cmd>Trouble diagnostics toggle<cr>",
	    desc = "Diagnostics (Trouble)",
	},
	{
	    "<leader>xx",
	    "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	    desc = "Buffer Diagnostics (Trouble)",
	}
    },
}

