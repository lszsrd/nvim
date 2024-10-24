return
{
    "nvim-telescope/telescope.nvim",

    dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
    },

    config = function ()
    	require("telescope").setup({})

	local telescope = require("telescope.builtin")

        vim.keymap.set('n', "<leader>ff", telescope.find_files, {})
	vim.keymap.set('n', "<leader>fg", telescope.live_grep, {})
    end
}
