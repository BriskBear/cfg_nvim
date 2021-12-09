#!/bin/bash

SCRIPT=`realpath $0`
SOURCE="`realpath $(pwd)`/*"
DEST="$HOME/.config/nvim"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'

copy_config() {
  [[ -d ~/.config/nvim ]]&& \
    ( echo 'neovim config exists!' && exit ) \
    || ( mkdir -pv ~/.config/nvim ; cp -rvf $SOURCE $DEST )
}

get_plugs() {
  plugs=($( cat ./plugins ))

  [[ -d ~/.config/nvim/ ]]&& \
    ( echo "~/.config/nvim/ exists!" && exit ) \
    || ( mkdir -vp ~/.config/nvim/plugs )

  for p in ${plugs[@]}
  do
    git clone "https://github.com/$p" "$HOME/.config/nvim/plugs/$p"
  done
}

install_neovim() {
  pushd /tmp/
  ( curl -L $url -o nvim.appimage && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( sudo cp -rf ./squashfs-root/usr/ /) && \
    (sudo rm -rf ./squashfs-root nvim.appimage)
  ) && ( echo 'neovim Installed!' )
  popd
}

copy_config
get_plugs
printf "call \033[0;36minstall_neovim\033[0m to build nightly\n"
