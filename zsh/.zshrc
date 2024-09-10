export TERM="xterm-256color"

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

zplug zimfw/bira, as:theme

zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"

zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize",          from:oh-my-zsh
zplug "lib/completion",            from:oh-my-zsh
zplug "lib/history",               from:oh-my-zsh
zplug "lib/key-bindings",          from:oh-my-zsh
zplug "lib/termsupport",           from:oh-my-zsh
zplug "lib/directories",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh
zplug "plugins/shrink-path",       from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use"

zplug check || zplug install
zplug load

alias chup="dnf check-upgrade --refresh"
alias ls="ls --color"
alias l="lsd --date '+%d.%m.%Y %H:%M' -lah"


export PATH=/home/andy/.detaspace/bin:$PATH
. "$HOME/.cargo/env"
PROMPT_DIRTRIM=3

