return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({ style = { transparency = false } })

        vim.cmd("colorscheme rose-pine");
    end
}
