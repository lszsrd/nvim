return
{
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-telescope/telescope-frecency.nvim",
    },

    config = function ()
        local telescope = require("telescope")

        telescope.setup({
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                },
            }
        })
        telescope.load_extension("file_browser")
        telescope.load_extension("frecency")
    end
}
