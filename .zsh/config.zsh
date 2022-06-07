export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

export FZF_TMUX_OPTS="-p 80%"

