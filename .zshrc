export LANG=ja_JP.UTF-8 

#colors
autoload -U colors
colors

# Alias
alias ls='gls -G -F --color=auto'
alias ll='ls -alh --color=auto'
alias rm='gmv -f --backup=numbered --target-directory ~/.junk'
alias pingg='ping 8.8.8.8'
alias k="kubectl"
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

# Prompt
local p_cdir="%B%F{206}[%~]%f%b"$'\n'
local p_info="%B%F{green}%n@%m${WINDOW:+"[$WINDOW]"}%f%b"
local p_mask="%B%(?,%F{92},%F{yellow})%(?,✔,✗)%f%b"
PROMPT="$p_kcontext$p_cdir$rhst$p_info $p_mask "

