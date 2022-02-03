sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -s -r ./nvim/ ~/.config/

ln -s -r ./nvim-plugins/ftplugin/ ~/.local/share/nvim/site/
ln -s -r ./nvim-plugins/syntax/ ~/.local/share/nvim/site/

