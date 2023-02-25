--this file is the starting entry of my neovim configuration

--sourcing configs
local confPlug_files = {
  "completion.lua",
}

local confcore_files = {
  "settings.lua",
}

--function to source all the files
local source_files = function(conf_table, conf_path)
  for _, name in ipairs(conf_table) do
    local path = string.format(conf_path, vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
  end
end

--"""Installing Packages in a floating window"""
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
  use 'onsails/lspkind.nvim'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  --use 'rafamadriz/friendly-snippets' --collection of snippets
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})

--"""Source Configurations"""
source_files(confPlug_files, "%s/configPlug/%s")
source_files(confcore_files, "%s/core/%s")
