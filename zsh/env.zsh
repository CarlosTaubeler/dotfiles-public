# --------------------------------------------
# Go environment setup
# --------------------------------------------
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin:$GOBIN"

# --------------------------------------------
# Node Version Manager (NVM) setup
# --------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# --------------------------------------------
# Python environment setup
# --------------------------------------------

# Prioritize user-installed Python tools
export PATH="$HOME/.local/bin:$PATH"

