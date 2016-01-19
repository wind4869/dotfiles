# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/wind/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/wind/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# For myscripts
set PATH $HOME/repos/myscripts $PATH

# For go
set -gx GOPATH $HOME/workspace/gopath
set PATH $GOPATH/bin $PATH

# For hub
alias git=hub

# For thefuck
eval (thefuck --alias | tr '\n' ';')

# For autojump
[ -f /usr/local/share/autojump/autojump.fish  ]; and . /usr/local/share/autojump/autojump.fish
