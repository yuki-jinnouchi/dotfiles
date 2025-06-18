#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
typeset -U path PATH
path=(
    $PATH
    # ~/.cargo/bin
    /opt/homebrew/bin(N-/)
    /opt/homebrew/sbin(N-/)
    /usr/bin
    /usr/sbin
    /bin
    /sbin
    /usr/local/bin(N-/)
    /usr/local/sbin(N-/)
    /Library/Apple/usr/bin
)

# # set arch
# # https://qiita.com/utict51/items/7ccbf81b8eb5f419a16a
# if (( $+commands[sw_vers] )) && (( $+commands[arch] )); then
#     [[ -x /usr/local/bin/brew ]] && alias brew="arch -arch x86_64 /usr/local/bin/brew"
#     alias x64='exec arch -x86_64 /bin/zsh'
#     alias a64='exec arch -arm64e /bin/zsh'
#     switch-arch() {
#         if  [[ "$(uname -m)" == arm64 ]]; then
#             arch=x86_64
#         elif [[ "$(uname -m)" == x86_64 ]]; then
#             arch=arm64e
#         fi
#         exec arch -arch $arch /bin/zsh
#     }
# fi
# setopt magic_equal_subst

#set pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# set simple history
unsetopt extended_history

# set aliases
source "${ZDOTDIR:-$HOME}/settings/alias.sh"
# set history
source "${ZDOTDIR:-$HOME}/settings/history.sh"

export EDITOR=vim
setopt auto_param_keys

# MacOS specific settings
if [[ "$(uname)" == "Darwin" ]]; then
    # Added by LM Studio CLI tool (lms)
    export PATH="$PATH:~/.cache/lm-studio/bin"

    # set fzf
    source <(fzf --zsh)

    # set rbenv
    eval "$(rbenv init - zsh)"
fi

# Linux specific settings
if [[ "$(uname)" == "Linux" ]]; then
    alias db="python ~/.dropbox-dist/dropbox.py"
    alias db_run="source ~/.dropbox-dist/dropboxd"

    # set personal brew for 42 Linux
    eval "$($HOME/.brew/bin/brew shellenv)" # [https://docs.brew.sh/Homebrew-on-Linux]
    # Load Homebrew config script [https://github.com/kube/42homebrew]
    source $HOME/.brewconfig.zsh
fi
