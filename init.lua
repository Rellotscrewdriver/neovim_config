--should contain default configs and packer installers
vim.opt.number = true

require('packer').startup({function()
  -- plugins here
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})