-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
        "rose-pine/neovim",
        as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine') 
		end
	})

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/vim-be-good')

    use('theprimeagen/harpoon')

    use('mbbill/undotree')


    use('kyazdani42/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

    use('voldikss/vim-floaterm')

    -- NEW PLUGINS 
    use {
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- LSP config for html css 
    use {
        'L3MON4D3/LuaSnip',
        requires = { 'rafamadriz/friendly-snippets' },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    } 


    -- Install bufferline.nvim
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons', -- Required for icons
        config = function()
            require('bufferline').setup {
                options = {
                    numbers = "none", -- No buffer numbers
                    close_command = "bdelete! %d", -- Command to close buffer
                    right_mouse_command = "bdelete! %d", -- Right mouse button closes buffer
                    left_mouse_command = "buffer %d", -- Left mouse button switches to buffer
                    middle_mouse_command = nil, -- Middle mouse button command
                    buffer_close_icon = ':)', -- Icon for buffer close
                    modified_icon = '●', -- Icon for modified buffer
                    close_icon = '', -- Icon for close button
                    left_trunc_marker = '', -- Marker for truncated buffers on the left
                    right_trunc_marker = '', -- Marker for truncated buffers on the right
                    max_name_length = 30, -- Maximum length of buffer names
                    max_prefix_length = 15, -- Maximum length of buffer prefix
                    tab_size = 18, -- Size of each tab
                    diagnostics = false, -- Disable diagnostics
                    offsets = {
                        {
                            filetype = "NvimTree", -- The filetype of the offset
                            text = "Explorer", -- Text to display
                            text_align = "left", -- Text alignment
                            padding = 1, -- Padding between text and the edge
                        }
                    },
                    show_buffer_icons = true, -- Show buffer icons
                    show_buffer_close_icons = true, -- Show buffer close icons
                    show_tab_indicators = true, -- Show tab indicators
                    show_duplicate_prefix = false, -- Disable duplicate buffer prefix
                    persist_buffer_sort = true, -- Persist buffer sort order
                    separator_style = "thin", -- Style of separators
                    enforce_regular_tabs = true, -- Ensure all tabs are of regular size
                    always_show_bufferline = true, -- Always show bufferline
                    sort_by = 'id', -- Sort buffers by ID
                }
            }
        end
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- Ixtiyoriy: ikonka qo'llab-quvvatlashi uchun
    }







    -- LSP 
    --use {
        --  'neovim/nvim-lspconfig',
        --'williamboman/mason.nvim',
        --'williamboman/mason-lspconfig.nvim',
        --'hrsh7th/nvim-cmp',
        --  'hrsh7th/cmp-nvim-lsp',
        --    'hrsh7th/cmp-buffer',
        --     'hrsh7th/cmp-path',
        --       'hrsh7th/cmp-cmdline',
        --        'hrsh7th/cmp-vsnip',
        --          'hrsh7th/vim-vsnip',
        --        }
    end)
