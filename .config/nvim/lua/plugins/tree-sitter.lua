return{
     -- Tree-sitter --
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "cpp", "python", "make"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })


    end
 }
