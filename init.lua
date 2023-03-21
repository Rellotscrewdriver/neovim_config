_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require('impatient')
--starting entry
local confPlug_files = {
  "theme.lua",
  "symbols.lua",
  "completion.lua",
  "window.lua",
  "dashboard.lua",
  "explorer.lua",
  "code_runner.lua",
  "statusline.lua",
  "discord.lua",
  "git.lua",
  "terminal.lua",
  "misc.lua"
}

local confcore_files = {
  "settings.lua",
  "mappings.lua",
  "autocommands.lua",
}

local source_files = function(conf_table, conf_path)
  for _, name in ipairs(conf_table) do
    local path = string.format(conf_path, vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
  end
end

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
  use "ahmedkhalf/project.nvim"
  use {"p00f/nvim-ts-rainbow", after = "nvim-treesitter" }
  use {'nvim-treesitter/nvim-treesitter',
        run = function()
            -- it requires to update in order to work for the first time
            require('nvim-treesitter.install').update({ with_sync = true }) 
        end,
      }
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})

source_files(confPlug_files, "%s/configPlug/%s")
source_files(confcore_files, "%s/core/%s")
