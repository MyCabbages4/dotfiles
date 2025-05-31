return{
-- Tokyo night theme --
{
  	"folke/tokyonight.nvim",
  	lazy = false,
  	priority = 1000,
  	config = function()
	-- vim.cmd.colorscheme "tokyonight-night"
    end
},
    -- Catppuccin Theme --
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                integrations = {
                    treesitter = true,
                    telescope = true,
                    cmp = true,
                },
            })
        vim.cmd.colorscheme "catppuccin-mocha"
        end
    },

	-- Auto-pairing --
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
},

    -- Lua Line --
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup({
                options = {theme = "auto"},
            })
        end
    },

    -- Git signs --
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end
    }
}
