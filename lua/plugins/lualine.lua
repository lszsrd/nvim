return
{
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local config = {
            options = {
                theme = "auto",
                component_separators = {},
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "progress" },
                lualine_z = { "location" }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {}
            },
        }

        local function insert_left(component)
            table.insert(config.sections.lualine_c, component)
        end

        local function insert_right(component)
            table.insert(config.sections.lualine_x, component)
        end

        insert_left({
            "filename",
            color = { gui = "bold" }
        })

        insert_left({
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
                color_error = { bg = "#ff757f", gui = "bold" },
                color_warn = { fg = "#ffc777", gui = "bold" },
                color_info = { fg = "#86e1fc", gui = "bold" },
            },
        })

        insert_right({
            "encoding"
        })

        insert_right({
            "filetype"
        })

        insert_right({
            function()
                local buf_ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
                local clients = vim.lsp.get_clients()

                for _, client in ipairs(clients) do
                    if vim.fn.index(client.config.filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return "No active LSP"
            end,
            color = function()
                if next(vim.lsp.get_clients{bufnr = 0}) == nil then
                    return { fg = "#ff757f", gui = "bold" }
                end
                return { fg = "#fca7ea" }
            end,
            icon = "",
        })

        require("lualine").setup(config)
    end
}
