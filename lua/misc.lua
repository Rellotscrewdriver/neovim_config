--very few lines of config or just one line of calling setup usually end up here 
vim.notify = require("notify")

require("notify").setup{
  stages = "slide",
  render = "compact",
  fps = 120,
}

require('Comment').setup()

require('smart-splits').setup()

require('nvim-autopairs').setup()

require("mason").setup()

local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  return
end

impatient.enable_profile()

