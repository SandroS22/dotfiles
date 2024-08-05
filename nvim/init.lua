-- let g:python3_host_pro='usr/bin/python3'
local vim = vim
local Plug = vim.fn['plug#']
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

vim.call('plug#begin')
Plug ('ncm2/ncm2')
Plug ('SirVer/ultisnips')
Plug ('honza/vim-snippets')
Plug ('preservim/nerdtree')
Plug ('williamboman/nvim-lsp-installer')
Plug ('neovim/nvim-lspconfig')
Plug ('catppuccin/nvim', { ['as'] = 'catppuccin' })
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug ('nvim-lua/plenary.nvim')
Plug ('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug ('neoclide/coc.nvim', {['branch'] = 'release'})

Plug ('neovim/nvim-lspconfig')
Plug ('hrsh7th/cmp-nvim-lsp')
Plug ('hrsh7th/cmp-buffer')
Plug ('hrsh7th/cmp-path')
Plug ('hrsh7th/cmp-cmdline')
Plug ('hrsh7th/nvim-cmp')
Plug ('neoclide/coc.nvim', {['branch'] = 'master', ['do'] = 'npm ci'})
Plug ('windwp/nvim-autopairs')
-- For vsnip users.
--Plug 'hrsh7th/cmp-vsnip'
Plug ('hrsh7th/vim-vsnip')

-- For luasnip users.
Plug ('L3MON4D3/LuaSnip')
Plug ('saadparwaiz1/cmp_luasnip')

vim.call('plug#end')

-- Configuração do autocomplete
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
map("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
map("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- Fim configuração autocomplete


vim.cmd.colorscheme('catppuccin')
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
