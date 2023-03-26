local packer = require("packer")
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

require('packer').startup({function()
  -- plugins here
  use 'wbthomason/packer.nvim'

  --autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  --autocompletion extra
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'jose-elias-alvarez/null-ls.nvim'

  use 'akinsho/toggleterm.nvim'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = 'nvim-lua/plenary.nvim'}
  use {'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'goolord/alpha-nvim'
  use 'lewis6991/impatient.nvim'
  use 'Civitasv/cmake-tools.nvim'
  --git 
  use 'lewis6991/gitsigns.nvim'
  use 'rcarriga/nvim-notify'
  use 'dstein64/vim-startuptime'
  use 'simrat39/symbols-outline.nvim'
  use 'vimwiki/vimwiki'
  use {"nvim-neo-tree/neo-tree.nvim", branch = "v2.x", requires = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim",}}
  use 'andweeb/presence.nvim'
  use {'glepnir/galaxyline.nvim', branch = 'main', requires = { 'nvim-tree/nvim-web-devicons'}}
  use 'windwp/nvim-autopairs'
  
  -- Themes
  use "Shatur/neovim-session-manager"
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'numToStr/Comment.nvim'
  use 'mrjones2014/smart-splits.nvim'
  use 'famiu/bufdelete.nvim'
  use "nvim-telescope/telescope-project.nvim"
  use {"p00f/nvim-ts-rainbow", after = "nvim-treesitter" }
  use {'nvim-treesitter/nvim-treesitter',
        run = function()
            -- it requires to update in order to work for the first time
            require('nvim-treesitter.install').update({ with_sync = true }) 
        end,
      }
end,
})