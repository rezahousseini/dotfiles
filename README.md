# dotfiles

Setup the dotfiles by calling

    stow git vim zsh tmux 
 
 on a linux system or
 
     stow git vim zsh tmux mintty xinit

on cygwin. Add (`bash` instead of `zsh` if your want to use bash)

## zsh plugin installations

 * [zsh-syntax-highlight](https://github.com/zsh-users/zsh-syntax-highlighting): `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
 * [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
