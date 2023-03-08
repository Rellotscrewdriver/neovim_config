NVIM_DIR=$HOME/tools/nvim
NVIM_CONFIG_DIR=$HOME/.config/nvim

echo "Installing Packer"
git clone https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Copying config files to ~/.config/nvim"#
cp -r configPlug core snippets init.lua $NVIM_CONFIG_DIR  

echo "Installing nvim plugins, please wait"
"$NVIM_DIR/bin/nvim" -c "autocmd User PackerComplete quitall" -c "PackerSync"

echo "Installing and Compiling Tree-Sitter prasers"
"$NVIM_DIR/bin/nvim" nvim -es "TSinstall cpp cmake make markdown"

echo "Finished installing the config and its plugin dependencies!"

