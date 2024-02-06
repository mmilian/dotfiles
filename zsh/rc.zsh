source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

source_if_exists $HOME/.env.sh
source_if_exists $DOTFILES/zsh/history.zsh
source_if_exists $DOTFILES/zsh/git.zsh
source_if_exists ~/.fzf.zsh
source_if_exists $DOTFILES/zsh/aliases.zsh
source_if_exists $HOME/.asdf/asdf.sh
source_if_exists /usr/local/etc/profile.d/z.sh
source_if_exists /opt/homebrew/etc/profile.d/z.sh

if type "direnv" > /dev/null; then
    eval "$(direnv hook zsh)"
fi

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit

if test -z ${ZSH_HIGHLIGHT_DIR+x}; then
else
    source $ZSH_HIGHLIGHT_DIR/zsh-syntax-highlighting.zsh
fi

precmd() {
    source $DOTFILES/zsh/aliases.zsh
}

export VISUAL=nvim
export EDITOR=nvim
export GRAALVM_HOME="$HOME/tools/graalvm-ce-java11-22.3.2"
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.local/bin/flutter/bin:$PATH:/usr/local/sbin:$DOTFILES/bin:$HOME/.local/bin:$GRAALVM_HOME/bin"



eval "$(starship init zsh)"


. "$HOME/.asdf/asdf.sh"

# VIM MODE (http://dougblack.io/words/zsh-vi-mode.html) -----------------------
# bindkey -v
# bindkey '^?' backward-delete-char

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg[yellow]%}[% NORMAL]% %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
#     zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select
# export KEYTIMEOUT=1
# END VIM MODE ----------------------------------------------------------------

#eval "$(lua ~/bin/z.lua --init zsh)"

export PATH="${PATH}:$HOME/.cargo/bin"

source "$HOME/.tas_toolbox_env.sh"


export PATH="$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin"
