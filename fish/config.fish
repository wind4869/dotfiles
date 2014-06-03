# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# For env
set PATH $HOME/repos/myscripts $PATH # This adds myscripts to env

# For NVM from [https://github.com/Alex7Kom/nvm-fish/blob/master/nvm.fish]
. $HOME/.nvm/nvm.fish # This loads NVM

# For vim vundle
set SHELL (which sh)
