# -----------------------------
# Alias
# -----------------------------

# ref: https://qiita.com/ryuichi1208/items/2eef96debebb15f5b402

# グローバルエイリアス
# alias -g L='| less'
alias -g L='| wc -l' #change
# alias -g H='| head'
alias -g G='| grep'
# alias -g GI='| grep -ri'

# エイリアス
# alias lst='ls -ltr --color=auto'
alias l='ls -l' #change
alias la='ls -a' #change
alias ll='ls -l' #change

# alias du="du -Th"
# alias df="df -Th"
# alias su="su -l"
alias so='source'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias c='cd' # change
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
# alias back='pushd'
# alias diff='diff -U1'

# alias tma='tmux attach'
# alias tml='tmux list-window'

# alias dki="docker run -i -t -P"
# alias dex="docker exec -i -t"
# alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# -----------------------------

# ref: https://qiita.com/taijuf212/items/57fccf4550ac6a983b8d

alias g='git'
compdef g=git
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gsw='git switch'
alias gct='git commit'
# alias gg='git grep'
alias ga='git add'
alias gd='git diff'
# alias gl='git log'
# alias gfo='git fetch origin'
# alias gcm='git commit -m'
# alias gpo='git push origin'
# alias gpom='git push origin master'
# alias gst='git stash'
# alias gsl='git stash list'
# alias gsp='git stash pop'

# -----------------------------

# ref: https://www.youtube.com/watch?v=qdrO8kD-ZT4

# alias -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

setopt auto_cd
hash -d proj=~/Dropbox/42/dev/projects
hash -d eval=~/Dropbox/42/dev/evaluations
hash -d proc=~/Dropbox/procon

# -----------------------------

# 42
alias francinette=~/francinette/tester.sh
alias paco=~/francinette/tester.sh
alias norm=norminette
alias cdpj='cd ~proj'
alias cdev='cd ~eval'

# procon
alias cdpc='cd ~proc'
alias actools=atcoder-tools
alias act=atcoder-tools

alias ide='sh ~/dotfiles/common/tmux/ide.sh'
