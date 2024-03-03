# general variables

# export BROWSER="firefox" 
export COLORTERM="truecolor"
export TERM="xterm-256color"
export EDITOR="nvim"
export VISUAL="nvim"
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_ALT_C_COMMAND="$FZF_CTRL_T_COMMAND"
# export FZF_CTRL_T_COMMAND="fd -t d --hidden --follow --exclude \".git\" . $HOME"
# export READER="zathura"
# export TERMBROWSER="lynx"
export TERMINAL="alacritty"

# ENVIRONMENT
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"


# BREW 
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# RBENV
export PATH="$HOME/.rbenv/shims:$PATH"

# JENV
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ANDROID
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# GPG
export GPG_TTY=$(tty)

