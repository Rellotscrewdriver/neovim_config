local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins", {
 defaults = { lazy = true },
 install = { colorscheme = { "catppuccin" } },
 checker = { enabled = true },
 change_detection = {
  notify = true,
 },
 performance = {
  rtp = {
   disabled_plugins = {
   "gzip",
   "zip",
   "zipPlugin",
   "fzf",
   "tar",
   "tarPlugin",
   "getscript",
   "getscriptPlugin",
   "vimball",
   "vimballPlugin",
   "2html_plugin",
   "matchit",
   "matchparen",
   "logiPat",
   "rrhelper",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   },
  },
 },
})

require "plugins"
require "theme"
require "core.settings"
require "core.icons"
require "symbols"
require "completion"
require "window"
require "dashboard"
require "explorer"
require "quickrun"
require "statusline"
require "discord"
require "git"
require "terminal"
require "misc"
require "core.mappings"
require "core.autocommands"
