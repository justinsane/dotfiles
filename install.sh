#!/bin/bash


zshrc() {

    


    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"                    
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "==========================================================="
    echo "                 cloning zsh-syntax-highlighting           "
    echo "-----------------------------------------------------------"                 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    echo "             Installing fonts.                             "
    FONT_DIR="$HOME/.fonts"
    git clone https://github.com/powerline/fonts.git $FONT_DIR --depth=1
    cd $FONT_DIR
    ./install.sh
    echo "==========================================================="
    
    echo "==========================================================="
    echo "             Setting up the Spaceship theme.               "
    ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc
