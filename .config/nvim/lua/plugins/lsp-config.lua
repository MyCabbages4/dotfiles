return{{
	    "williamboman/mason.nvim",
    	config = function()
        	require("mason").setup()
    	end},
    {
	"williamboman/mason-lspconfig.nvim",
	config = function()
	  require("mason-lspconfig").setup({
		ensure_installed = {"lua_ls", "clangd", "pylsp", "gopls"}
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
            lspconfig.gopls.setup({capibilities = capibilities})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    },
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        config = function()
            vim.g.vimtex_view_method = "zathura" -- Set your preferred viewer
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_complete_enabled = 1
            vim.g.vimtex_quickfix_mode = 0
            vim.g.vimtex_compiler_latexmk = {
                out_dir = "build", -- Optional: keep aux files clean
                options = {
                    "-pdf",
                    "-interaction=nonstopmode",
                    "-synctex=1",
                },
            }
            -- Optional: set a keymap to compile
            vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<CR>")
        end
    },
}
