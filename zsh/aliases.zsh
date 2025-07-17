# ─────────────────────────────────────────────
# 🧑‍💻 Git & GitHub
# ─────────────────────────────────────────────
alias gs="git status"
alias gc="git commit"
alias gcl="git clone"
alias gb="git branch"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gpl="git pull"
alias gps="git push"
alias gaa="git add ."
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gl="git log --oneline --graph --decorate"

# 🔐 Git SSH Key Management
alias keys="~/dev/dotfiles/scripts/keys.sh"
alias gkeys="~/dev/dotfiles/scripts/keys.sh"  # optional short alias

# ─────────────────────────────────────────────
# ⚙️ Node / NPM / Yarn
# ─────────────────────────────────────────────
alias ns="npm start"
alias nrd="npm run dev"
alias nrb="npm run build"
alias nrs="npm run start"
alias nt="npm test"
alias nci="npm ci"
alias ni="npm install"
alias nid="npm install --save-dev"
alias nr="npm run"
alias tsc="npx tsc"
alias y="yarn"
alias nrm="npm run migrate"

# ─────────────────────────────────────────────
# 🐳 Docker
# ─────────────────────────────────────────────
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build"
alias dps="docker ps"
alias dprune="docker system prune -f"

# ─────────────────────────────────────────────
# 📁 Filesystem & Navigation
# ─────────────────────────────────────────────
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias mkdirp="mkdir -p"
alias path='echo $PATH | tr ":" "\n"'
alias h="history"
alias l="ls -lah"
alias lt="ls -ltrh"
alias serve="npx serve"
alias treesz='du -sh -- */ 2>/dev/null | sort -h'

# Quick directory shortcuts
alias dev="cd ~/dev"
alias dotf="cd ~/dev/dotfiles"
alias prj="cd ~/dev/projects"
alias hm="cd ~"

# ─────────────────────────────────────────────
# 🌐 Networking / macOS System
# ─────────────────────────────────────────────
alias ports="lsof -i -P -n | grep LISTEN"     # Show listening ports
alias devip="ipconfig getifaddr en0"          # Local IP
alias reload="source ~/.zshrc"
alias zs="source ~/.zshrc"                    # Alt shortcut for reload

# ─────────────────────────────────────────────
# 🌳 Tree View (filesystem)
# ─────────────────────────────────────────────
alias treef='tree -d -L 1'      # Folders only – Level 1
alias treef2='tree -d -L 2'
alias treef3='tree -d -L 3'
alias treeff='tree -L 1'        # Folders + Files – Level 1
alias treeff2='tree -L 2'
alias treeff3='tree -L 3'

# ─────────────────────────────────────────────
# ✍️ Custom & Typo Corrections
# ─────────────────────────────────────────────
# Add custom personal aliases and typo fixes below
