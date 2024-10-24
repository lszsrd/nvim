return {
    {
	"nvimdev/dashboard-nvim",

	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},

	config = function()
	    require("dashboard").setup({
		shortcut_type = "number",
	    })
	end,
    }
}
