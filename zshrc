export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nanotech"

# Setting ZSH Theme for Powerline9k
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir_writable dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs command_execution_time background_jobs time disk_usage ram)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_MODE='nerdfont-complete'
# END Ponwerlin9k

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[[ -d "$HOME/.asdf" ]] && . "$HOME/.asdf/asdf.sh"
[[ -d "$HOME/.asdf" ]] && . "$HOME/.asdf/completions/asdf.bash"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim="nvim"
alias ll="exa -la"
alias vimd="nvim -d"
alias lrails="./bin/rails"
alias lbundle="./bin/bundle"
alias dce="docker-compose exec"

export EDITOR="nvim"

source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

[[ -d "$HOME/.local/bin" ]] && export PATH="$HOME/.local/bin:$PATH"
[[ -d "$HOME/.deno" ]] && export PATH="$HOME/.deno/bin:$PATH"
[[ -d "$HOME/.cargo" ]] && export PATH="$HOME/.cargo/bin:$PATH"
[[ -d "$HOME/go" ]] && export GOPATH="$HOME/go"
[[ -d "$HOME/go" ]] && export PATH="$PATH:$HOME/go/bin"
[[ -d "$HOME/.composer" ]] && export PATH="$PATH:$HOME/.composer/vendor/bin"

eval "$(direnv hook zsh)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export ANDROID_HOME="$HOME/.android/"
