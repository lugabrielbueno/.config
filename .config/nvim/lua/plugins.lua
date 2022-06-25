--local execute = vim.api.nvim_command
--local fn = vim.fn
--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--if fn.empty(fn.glob(install_path)) > 0 then
--	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--end
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use {'wbthomason/packer.nvim', opt = true }
	use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use {'EdenEast/nightfox.nvim' }
	use {'windwp/nvim-autopairs' }
	use {'windwp/nvim-ts-autotag' }
	use {'williamboman/nvim-lsp-installer' }
	use {'jose-elias-alvarez/null-ls.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
	use {'rmehri01/onenord.nvim', { branch = 'main' } }
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {'neovim/nvim-lspconfig' }
	use {'L3MON4D3/LuaSnip' }
	use {'hrsh7th/nvim-cmp' }
	use {'hrsh7th/cmp-nvim-lsp' }
	use {'hrsh7th/cmp-buffer' }
	use {'hrsh7th/cmp-path' }
	use {'hrsh7th/cmp-cmdline' }
	use {'saadparwaiz1/cmp_luasnip' }
	use {'onsails/lspkind.nvim' }
	use {'nvim-lualine/lualine.nvim'}
	use {'antoinemadec/FixCursorHold.nvim'}
	use {'ray-x/lsp_signature.nvim' }
	use {'kyazdani42/nvim-web-devicons'}
	use {'junegunn/fzf', { run = { '-> fzf#install()' } } }
	use {'junegunn/fzf.vim' }
	use {'kyazdani42/nvim-tree.lua'}
	use {'flazz/vim-colorschemes' }
	use {'sainnhe/everforest' }
	use {'arcticicestudio/nord-vim' }
	use {'jacoborus/tender.vim' }
	use {'edkolev/tmuxline.vim' }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	--if packer_bootstrap then
	--	require('packer').sync()
	--end
	--
	--
	--call all files
	require 'plugin.treesitter-config'
	require 'plugin.lualine-config'
	require 'plugin.telescope-config'
	require 'plugin.nvimtree-config'
	require 'plugin.nvimcmp-config'
	require 'plugin.autopair-config'
	require 'plugin.null-ls-config'
end)
















