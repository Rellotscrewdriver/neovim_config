NVIM_DIR=/usr/bin/nvim
NVIM_CONFIG_DIR=~/.config/nvim
NVIM_DIR=$HOME/tools/nvim
NVIM_CONFIG_DIR=$HOME/.config/nvim

echo "Installing Packer"
git clone https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Copying config files to ~/.config/nvim"#
cp -r configPlug core snippets init.lua $NVIM_CONFIG_DIR  


echo -n "Copying config files to ~/.config/nvim"
mkdir -p ~/.config/nvim
cp -r lua snippets init.lua $NVIM_CONFIG_DIR 
echo "...done"

echo -n "Installing nvim plugins, please wait"
"$NVIM_DIR" nvim -es "Lazy install"
echo "...done"

echo -n "Installing and Compiling Tree-Sitter prasers"
"$NVIM_DIR" nvim -es "TSinstall cpp cmake make markdown markdown-inline python"
echo "...done"

echo "Finished installing the config and its plugin dependencies!"
echo "Enjoy!"

