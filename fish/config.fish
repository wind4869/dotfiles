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

# For gnu commands
set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

# For Homebrew
set PATH /usr/local/sbin $PATH

# For hadoop
set PATH /usr/local/Cellar/hadoop/2.7.2/sbin $PATH
alias hstart="start-dfs.sh; start-yarn.sh"
alias hstop="stop-yarn.sh; stop-dfs.sh"

