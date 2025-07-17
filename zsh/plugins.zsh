# --------------------------------------------
# Oh My Zsh Plugin Configuration
# --------------------------------------------

# Minimal plugin list for performance and utility
plugins=(
  git                      # Useful Git aliases and completions
  zsh-autosuggestions      # Fish-style command autosuggestions
  zsh-syntax-highlighting  # Highlight command syntax (must be last)
)

# --------------------------------------------
# Explicit plugin load (required for custom plugins)
# --------------------------------------------

# Load syntax highlighting manually to avoid initialization issues
source "$DOTFILES/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
