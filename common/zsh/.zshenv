#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export ZDOTDIR=$HOME/dotfiles/common/zsh

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# init Rust environment in MacOS
if [[ '$(uname -s)' == 'Darwin' ]]; then
. "$HOME/.cargo/env"
fi

