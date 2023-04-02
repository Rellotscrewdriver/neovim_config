NVIM_DIR=/usr/bin/nvim
NVIM_CONFIG_DIR=~/.config/nvim

set -e

# check whether python, pip and neovim are installed
if [[ -z "$(command -v rg)" ]] && [[ ! -f "usr/bin/g" ]]; then
    echo "Please install ripgrep from your package manager"
fi

if [[ -z "$(command -v nvim)" ]] && [[ ! -f "usr/bin/nvim" ]]; then
    echo "Please install neovim from your package manager"
fi

if [[ -z "$(command -v pip)" ]] && [[ ! -f "usr/bin/pip" ]]; then
    echo "Please install python(including pip) from your package manager"
fi

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

echo "Installing hack nerd font in your local directory"
mkdir -p ~/.local/share/fonts 
if [ -f "~/DejaVuSansMono.zip" ]; then
    echo "font's already there, skip installing it"
else
    echo "installing the required font from the internet, please wait if you do have internet connection"
    wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/DejaVuSansMono.zip -O ~/DejaVuSansMono.zip
fi

unzip -j ~/DejaVuSansMono.zip "DejaVu Sans Mono Nerd Font Complete.ttf" -d ~/.local/share/fonts/
fc-cache -f
rm -f ~/DejaVuSansMono.zip

echo "Finished installing the config and its plugin dependencies!"
echo "make sure to restart the terminal to see the nerd icons"