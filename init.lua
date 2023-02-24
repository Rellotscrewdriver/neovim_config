--This file is the starting entry of My configuration

--tables for sourcing configs
local confPlug_files = {

}

local confcore_files = {
  "settings.lua",
}

--function to source tables
local source_files = function(conf_table, conf_path)
  for _, name in ipairs(conf_table) do
    local path = string.format(conf_path, vim.fn.stdpath("config"), name)
    local source_cmd = "source " .. path
    vim.cmd(source_cmd)
  end
end

--"""Setup Packer"""
require('packer').startup({function()
  -- plugins here
  use 'wbthomason/packer.nvim'
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})

--"""source configurations"""
source_files(confPlug_files, "%s/configPlug/%s")
source_files(confcore_files, "%s/core/%s")
