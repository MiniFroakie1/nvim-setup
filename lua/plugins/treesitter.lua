return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs");

      configs.setup({
          ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "svelte", "c_sharp" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        });
    end;
    vim.filetype.add({
        pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
    })

 }
