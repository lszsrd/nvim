return
{
    "nvim-telescope/telescope.nvim",

    dependencies = {
	"nvim-telescope/telescope-file-browser.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
    },

    config = function ()
    	require("telescope").setup({
	    extensions = {
		file_browser = {
		    hijack_netrw = true,
		}
	    }
	})


    vim.keymap.set('n', "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end
}
