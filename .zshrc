export LANG=ja_JP.UTF-8 

# auto completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
setopt list_packed
setopt COMPLETE_IN_WORD

#colors
autoload -U colors
colors

# Prompt
local p_cdir="%B%F{21}[%~]%f%b"$'\n' 
local p_info="%B%F{cyan}%n@%m${WINDOW:+"[$WINDOW]"}%f%b"
local p_mask="%B%(?,%F{green},%F{yellow})%(?,✔,✗)%f%b"
PROMPT=" $p_cdir$rhst$p_info $p_mask "

# Alias
alias ls='gls -G -F --color=auto'
alias ll='ls -alh --color=auto'
alias rm='gmv -f --backup=numbered --target-directory ~/.junk'
alias pingg='ping 8.8.8.8'
function cd() {
  builtin cd $@ && ls;
}


# History
setopt hist_ignore_all_dups
setopt share_history
setopt hist_no_store
setopt hist_reduce_blanks
HISTSIZE=500000
SAVEHIST=1000000
HISTFILE=~/.zsh/zsh_history

# Others
setopt auto_pushd
setopt correct
setopt correct
