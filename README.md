# System_setup
Setting up environments, vim, and necessary utilities

## Install vim-plug 
### vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
>   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  
### neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

## Install regular vim
pip install vim
## OR
## Install neovim
sudo apt install neovim

## Install vim plugins
### on regular vim
* vim ~/.vimrc
* source %
* :PlugInstall
### OR
### on neovim
* cd ~/.config/nvim
* vim init.vim
* Add contents of .vimrc to the *init.vim* file
