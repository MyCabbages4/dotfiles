return{{
	    "williamboman/mason.nvim",
    	config = function()
        	require("mason").setup()
    	end},
    {
	"williamboman/mason-lspconfig.nvim",
	config = function()
	  require("mason-lspconfig").setup({
		ensure_installed = {"lua_ls", "clangd", "pylsp"}
	})
	end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capibilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.lua_ls.setup({capibilities = capibilities})
            lspconfig.clangd.setup({capibilities = capibilities})
            lspconfig.pylsp.setup({capibilities = capibilities})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    }
}
