# Neovim bleeding-edge bootstrapper  
_Install my neovim config and install nightly NeoVim_  

__How to Use:__  
1. `git clone https://github.com/briskbear/cfg_nvim [out_dir]`  
2. `cd [cfg_nvim|out_dir]`  
3. `. bootstraps`  
4. `install_neovim`  

__The One-liner:__  
`git clone https://github.com/briskbear/cfg_nvim && pushd cfg_nvim && . ./bootstraps && install_neovim && popd`  

#### Notes:  
This entire directory can be removed after installation is complete. The application 
gets installed to /usr/bin/, the config gets copied to your ~/.config/nvim/ folder
and the plugins get cloned to your ~/.config/nvim/plugs folder.
