# preparation

Install dependencies

    sudo apt install git curl zsh stow tmux fonts-powerline neovim
    
Activate oh-my-zsh

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
Install the vim plugin manager

    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
Clone the repository

    git clone https://github.com/rezahousseini/dotfiles.git ~/.dotfiles
    
Change directory

    cd ~/.dotfiles
    
Remove or move any existing files

    rm ~/.zshrc

# dotfiles

Setup the dotfiles by calling

    stow git vim zsh tmux 
 
 on a linux system or
 
     stow git vim zsh tmux mintty xinit

on cygwin. Add (`bash` instead of `zsh` if your want to use bash)

## zsh plugin installations

 * [zsh-syntax-highlight](https://github.com/zsh-users/zsh-syntax-highlighting): `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
 * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
 * [poetry](https://github.com/darvid/zsh-poetry): `git clone https://github.com/darvid/zsh-poetry.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/poetry`
