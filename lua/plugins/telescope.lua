return
{
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-tree/nvim-web-devicons",
        "nvim-lua/plenary.nvim",
    },

    config = function ()
        require("telescope").setup({
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                }
            }
        })

        vim.keymap.set('n', "<leader>ff", ":Telescope find_files<CR>")
        vim.keymap.set('n', "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
    end
}
