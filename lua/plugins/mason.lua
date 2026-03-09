return
{
    "mason-org/mason.nvim",

    dependencies = {
        "mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },

    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        require("mason-lspconfig").setup({
            automatic_enable = true,
            ensure_installed = {
                "lua_ls",
                "bashls",
                "clangd",
                "pyright",
                "hls",
                "rust_analyzer",
                "ts_ls",
                "docker_language_server",
                "asm_lsp",
                "gh_actions_ls",
                "postgres_lsp",
                "jsonls",
            },
        })

        vim.lsp.config("clangd", {
            root_markers = {
                "compile_commands.json",
                "compile_flags.txt",
                "Makefile",
                "configure.ac",
                "configure.in",
                "config.h.in",
                "meson.build",
                "meson_options.txt",
                "build.ninja",
                ".git",
            },
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--header-insertion=iwyu",
                "--completion-style=detailed",
                "--function-arg-placeholders",
                "--fallback-style=llvm",
            },
            filetypes = {
                "c",
                "cpp",
                "objc",
                "objcpp",
                "cuda",
                "cxx",
                "hpp"
            },
        })
    end
}
