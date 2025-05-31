require("config.lazy")

local opts = {noremap = true, silent = true}

-- Function name
local map = vim.api.nvim_set_keymap

-- Modes
--      normal_mode = "n"
--      insert_mode = "i"
--      visual_mode = "v"
--      visual_block_mode = "x"
--      term_mode = "t"`
--      command_mode = "c"

-- Normal Mode Commands --
map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Vim misc defaults --
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.wo.number = true

-- LSP?? --
--require 'lspconfig'.clangd.setup{}
