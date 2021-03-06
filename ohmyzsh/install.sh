#!/usr/bin/env bash

cd "$(dirname $0)"

ohmyzsh_dir="$HOME/.oh-my-zsh"
if ! [[ -d "$ohmyzsh_dir" ]]; then
    curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh \
        > oh-my-zsh-install.sh
    sh oh-my-zsh-install.sh --skip-chsh
    rm -f oh-my-zsh-install.sh

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH/custom/themes/powerlevel10k
fi
