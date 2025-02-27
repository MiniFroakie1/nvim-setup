return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                typescript = { "prettier" },
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                rust = { "ast-grep" },
            },

            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 5000,
            }
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 5000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end
}
