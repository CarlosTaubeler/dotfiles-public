# dotfiles

A developer-centric, modular dotfiles setup designed for **macOS (Apple Silicon)** systems without Homebrew.
It focuses on **terminal-centric automation** of a full development environment using Bash and manual control over tools like Node.js (`nvm`), Python, Go, Git, GPG, SSH, and VSCode.

---

## ✨ Features

- Full Zsh setup with Oh-My-Zsh, Powerlevel10k, plugins, aliases
- Auto-symlinking of `.zshrc`, `.p10k.zsh`, `.gitconfig`, VSCode settings, etc.
- Node.js via `nvm` with global NPM tooling
- Python setup (via system or pyenv)
- Go (manual install via binary archive)
- Git, SSH, GPG, and GitHub CLI configuration
- VSCode: extensions & settings auto-restore
- 100% scriptable, modular Bash-based automation
- No Homebrew required

---

## 🚀 Installation (after macOS clean install)

```bash
xcode-select --install
git clone git@github.com:<your-username>/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash install.sh
