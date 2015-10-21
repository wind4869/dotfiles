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

# For myscripts
set PATH $HOME/repos/myscripts $PATH # This adds myscripts to env

# For pyenv
# set -x PATH "/usr/local/opt/pyenv/bin" $PATH # This adds pyenv to env
# . (pyenv init - | psub)

# For NVM from [https://github.com/Alex7Kom/nvm-fish/blob/master/nvm.fish]
. $HOME/.nvm/nvm.fish # This loads NVM

# For vim vundle
set SHELL (which sh)

# For autojump
set SHELL (which fish)
[ -f /usr/local/share/autojump/autojump.fish  ]; and . /usr/local/share/autojump/autojump.fish

# For core dump file
ulimit -c unlimited

# For thefuck
function fuck -d 'Correct your previous console command'
    set -l exit_code $status
    set -l eval_script (mktemp 2>/dev/null ; or mktemp -t 'thefuck')
    set -l fucked_up_commandd $history[1]
    thefuck $fucked_up_commandd > $eval_script
    . $eval_script
    rm $eval_script
    if test $exit_code -ne 0
        history --delete $fucked_up_commandd
    end
end

# For go
set -x GOPATH $HOME/workspace/gopath # set $GOPATH
set PATH $GOPATH/bin $PATH # This adds $GOPATH/bin to env

# For hub
alias git=hub

# For hadoop
set PATH /usr/local/Cellar/hadoop/2.7.1/sbin $PATH
alias hstart="start-dfs.sh; start-yarn.sh"
alias hstop="stop-yarn.sh; stop-dfs.sh"

