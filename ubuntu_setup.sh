apt install neovim
apt install nodejs
apt install npm
rustup component add rust-src
mkdir -p ~/.local/bin
rustup component add rust-analyzer
ln -s "$(rustup which --toolchain stable rust-analyzer)" ~/.cargo/bin/rust-analyzer
python3 -m venv venv
. ./venv/bin/activate
pip install -r requirements.txt
deactivate
npm i -g pyright
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp init.vim temp_init.vim
sed '/call plug#end/q' ~/.config/nvim/temp_init.vim > ~/.config/nvim/init.vim
nvim -c 'PlugInstall' -c 'qa'
cp temp_init.vim init.vim