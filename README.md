# Introduction

Hello! This is my personal neovim configuration for Linux with various plugins configured. it evolves as I learn more about neovim and become more proficient in using neovim. <br />
I wouldn't recommend cloning this repo and replace your own config, especially on other platforms since some configs for only for linux! <br />
Good configurations are personal, built over time with a lot of polish.

# Install and setup

Just run install.sh to install it on linux(untested on other platforms)

# Plugins
<details><summary><b>List of plugins</b></summary>

| Plugin            | Usage          |
|-------------------|--------------- |
| [Packer](https://github.com/wbthomason/packer.nvim)      | Plugin Management         |
| [hrsh7th](https://github.com/hrsh7th) + [lspconfig](https://github.com/neovim/nvim-lspconfig)     | AutoCompletion         |
| [lspkind](https://github.com/onsails/lspkind.nvim)     | Icons for autocompletion         |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)    | Snippet autocompletion         |
| [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)     | Spellcheck and Clang_check        |
| [bufferline](https://github.com/akinsho/bufferline.nvim) | buffer management |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim) | for fuzzy finding files and projects|
| [Code Runner](https://github.com/CRAG666/code_runner.nvim)| for running one file code quickly |
| [Alpha](https://github.com/goolord/alpha-nvim)| for dashboard |
| [impatient](https://github.com/lewis6991/impatient.nvim) | for improving starting time |
| [Cmake-tools](https://github.com/Civitasv/cmake-tools.nvim) | for CMake integration |
| [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) | for git integration|
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | GUI notifications |
| [startuptime](https://github.com/dstein64/vim-startuptime) | checking startuptime|
| [symbols-outline](https://github.com/simrat39/symbols-outline.nvim) | symbols-outline |
| [Vimwiki](https://github.com/vimwiki/vimwiki)| vimwiki |
| [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | | 
aand many more!(you can just look at init.lua to see all the plugins)
</details>


# UI Demo
<details><summary><b>UI Demos(will eat a lot of CPU)</b></summary>

For more UI demos, check [here](https://github.com/Rellotscrewdriver/nvim/issues/1).

## Start screen with alpha-nvim

<p align="center">
<img src="" width="800">
</p>

## Code autocompletion with nvim-cmp

<p align="center">
<img src="" width="800">
</p>

## Tags with symbols-outline

<p align="center">
<img src="" width="800">
</p>

## GUI-style notification with nvim-notify

<p align="center">
<img src="" width="800">
</p>

</details>

# Contributing

If you find anything that needs improving, do not hesitate to point it out or create a PR.

If you still have an issue, [open a new issue](https://github.com/jdhao/nvim-config/issues).

# Credits

* [jdhao](https://github.com/jdhao/nvim-config) for inspiration to restart my neovim configuration from scratch
* [dtr2300](https://github.com/dtr2300/nvim) 
* [alpha2phi](https://github.com/alpha2phi/neovim-for-beginner) for some noob tips and recommendations
* [Johan-Palacios](https://github.com/Johan-Palacios/nvim)
* [emxxjnm](https://github.com/emxxjnm/nvim)

# Further readings
https://github.com/rockerBOO/awesome-neovim
https://this-week-in-neovim.org/
https://github.com/nanotee/nvim-lua-guide
https://www.lua.org/pil/contents.html
https://www.lua.org/manual/5.1/manual.html
https://learnxinyminutes.com/docs/lua/
https://mkaz.blog/working-with-vim/
https://madskjeldgaard.dk/posts/neovim-as-sc-ide/
https://vim.fandom.com/wiki/Unused_keys
https://www.reddit.com/r/neovim/
https://github.com/ryanoasis/nerd-fonts
https://github.com/jesseduffield/lazygit
https://clangd.llvm.org/
