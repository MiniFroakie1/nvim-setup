return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set('n', '<leader>pv', function() vim.cmd('Neotree') end);
        require("neo-tree").setup({
            window = {
                position = "float",
            },
            default_component_configs = {
                filesystem = {
                    hijack_netrw_behavior = "open_current"
                }
            }
        });
    end
}
