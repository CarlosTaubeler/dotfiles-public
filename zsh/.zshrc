# --------------------------------------------
# DOTFILES PATHS (must be at the very top)
# --------------------------------------------
export DOTFILES="$HOME/path/to/dotfiles"
export ZSH_CUSTOM="$DOTFILES/zsh"

# --------------------------------------------
# OH MY ZSH CONFIGURATION
# --------------------------------------------
source "$ZSH_CUSTOM/plugins.zsh"

# --------------------------------------------
# ENVIRONMENT VARIABLES
# --------------------------------------------
source "$ZSH_CUSTOM/env.zsh"

# --------------------------------------------
# PROMPT CONFIGURATION
# --------------------------------------------
eval "$(starship init zsh)"

# --------------------------------------------
# ALIASES
# --------------------------------------------
source "$ZSH_CUSTOM/aliases.zsh"

# --------------------------------------------
# USER CONFIGURATION
# --------------------------------------------
source "$ZSH_CUSTOM/user.zsh"
