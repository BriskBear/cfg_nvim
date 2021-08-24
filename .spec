#!/bin/bash

SCRIPT=$(realpath $0)
SOURCE=$(dirname $SCRIPT)
DEST="$HOME/.config/nvim"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'
warn=" ${CYAN}Cowardly,${NC}${LIGHT_GREEN} preserving ${NC}nvim config.\n${RED}DANGER ${NC}${PINK}replace current nvim config with the newest from ~/.io?${NC} (${RED}y${NC}/${LIGHT_GREEN}n${NC})\n"

copy_config() {
  [[ -d ~/.config/nvim/init.vim ]] \
    && ( echo 'neovim config exists!' && exit ) \
    || ( cp -rvf $1/* $2 )
}

get_plugs() {
  plugs=(
    'ervandew/supertab' 
    'tpope/vim-endwise'
    'junegunn/vim-easy-align'
    'kien/ctrlp.vim'
  )
  [[ -d ~/.config/nvim/plugs ]]&& \
  ( echo "plugs dir exists!" && exit ) \
  || ( mkdir -vp ~/.config/nvim/plugs )
  echo ${plugs[@]}|xargs -n 1 -P 4 -I % git clone https://github.com/% ~/.config/nvim/plugs/
  # for p in ${plugs[@]}
  # do
  #   git clone "https://github.com/$p" "$HOME/.config/nvim/plugs/$p"
  # done
}

install_neovim() {
  [[ -d ~/Downloads ]] && ( cd ~/Downloads )
  ( curl $url -#Lo ./nvim.appimage && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( sudo cp -rf ./squashfs-root/usr/* /usr/) \
  ) && ( echo 'neovim Installed!' && rm -rf squashfs-root nvim.appimage) || (
    git clone https://github.com/neovim/neovim.git nvim
    cd nvim
    make -j5 CMAKE_BUILD_TYPE=Release
    sudo make -j5 CMAKE_INSTALL_PREFIX=/usr install
  )
}

update_config() {
    printf "$warn"
    echo $update
    read update
}

echo $SOURCE
echo $DEST

# update_config

copy_config $SOURCE $DEST
get_plugs
install_neovim
