local keymap = vim.keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap.set(
    'n',
    "<leader>fb",
    "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
    {
        desc = "Search files in current directory"
    }
)
keymap.set(
    'n',
    "<leader>fg",
    "<cmd>Telescope live_grep<cr>",
    {
        desc = "GREP from files"
    }
)
keymap.set(
    'n',
    "<leader>ff",
    "<cmd>Telescope find_files<cr>",
    {
        desc = "Search files"
    }
)
keymap.set(
    'n',
    "<leader>i",
    "<cmd>lua require(\"FTerm\").toggle()<cr>",
    {
        desc = "Toggle floating terminal"
    }
)
keymap.set(
    't',
    "<leader>i",
    "<cmd>lua require(\"FTerm\").toggle()<cr>",
    {
        desc = "Toggle floating terminal"
    }
)
keymap.set(
    'n',
    "<esc>",
    "<cmd>lua vim.cmd.noh()<cr>",
    {
        desc = "Disable highlight"
    }
)
keymap.set(
    'n',
    "gl",
    "<cmd>lua vim.diagnostic.open_float()<cr>",
    {
        desc = "Display diagnostic informations"
    }
)
keymap.set(
    'n',
    "gD",
    function ()
        vim.cmd("vsplit")
        vim.lsp.buf.declaration()
    end,
    {
        desc = "Go to declaration"
    }
)
keymap.set(
    'n',
    "gd",
    function ()
        vim.cmd("vsplit")
        vim.lsp.buf.definition()
    end,
    {
        desc = "Go to definition"
    }
)
