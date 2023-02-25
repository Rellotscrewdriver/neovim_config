NVIM_DIR=$HOME/tools/nvim
NVIM_CONFIG_DIR=$HOME/.config/nvim

echo "Installing Packer"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Installing nvim plugins, please wait"
"$NVIM_DIR/bin/nvim" -c "autocmd User PackerComplete quitall" -c "PackerSync"

echo "Installing and Compiling Tree-Sitter prasers"
"$NVIM_DIR/bin/nvim" nvim -es "TSinstall cpp cmake c make markdown"
echo "Finished installing Nvim and its dependencies!"