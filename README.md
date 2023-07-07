```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim silversearcher-ag fd-find ripgrep fzf`
npm i yarn -D --save-exact
yarn i prettier -D --save-exact
wget https://github.com/sharkdp/bat/releases/download/v0.23.0/bat_0.23.0_amd64.deb
sudo dpkg -i bat_0.23.0_amd64.deb
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
python3 -m pip install pynvim
```

From inside nvim
`:PackerInstall`
`:UpdateRemotePlugins`
`:TSInstall all`
`:TSUpdate`
Close and reopen nvim then `:CocInstall`
