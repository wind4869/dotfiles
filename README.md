dotfiles
========

Backups of my configuration files.

config files
--------
- vim: `.vimrc`, `.ycm_extra_conf.py`
- git: `.gitconfig`, `.gitmessage`
- fish: `config.fish`
- nvm: `nvm.fish`
- hexo: `_config.yml`

manual install
--------
    ln -s ~/repos/dotfiles/vim/.vimrc ~/.vimrc
    ln -s ~/repos/dotfiles/vim/.ycm_extra_conf.py ~/.ycm_extra_conf.py
    ln -s ~/repos/dotfiles/git/.gitconfig ~/.gitconfig
    ln -s ~/repos/dotfiles/git/.gitmessage ~/.gitmessage
    ln -s ~/repos/dotfiles/fish/config.fish ~/.config/fish/config.fish
    ln -s ~/repos/dotfiles/nvm/nvm.fish ~/.nvm/nvm.fish
    ln -s ~/repos/dotfiles/hexo/_config.yml ~/repos/hexo/_config.yml