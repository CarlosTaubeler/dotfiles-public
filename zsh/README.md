# ⚙️ ZSH Configuration

Modular ZSH setup using [Oh My Zsh](https://ohmyz.sh/) with a focus on clean structure, performance, and maintainability.

## 📁 Structure

```text
zsh/
├── aliases.zsh                 # Command aliases (e.g., git, node, docker)
├── env.zsh                     # Environment variables (Golang, Node, Python)
├── plugins.zsh                 # Plugin configuration and manual plugin loading
├── user.zsh                    # User-specific settings and overrides
├── plugins/
│   ├── zsh-autosuggestions/    # Submodule: Autosuggestions plugin
│   └── zsh-syntax-highlighting/ # Submodule: Syntax highlighting plugin
```

## Plugin Setup

This configuration uses Git submodules to manage third-party Zsh plugins.

### Initialize submodules after cloning

```bash
git submodule update --init --recursive
```

### Update plugins

```bash
git submodule update --remote
```

## 🛠️ Usage

### Ensure you have a symlink pointing from your home directory

```bash
ln -s ~/dev/dotfiles/zsh/.zshrc ~/.zshrc
```

Then reload

```bash
source ~/.zshrc
```

## 🔐 GPG & SSH
> If you're using signed commits or SSH, ensure your env.zsh and user.zsh are configured accordingly. See `scripts/keys.sh` for helper scripts and git/signing/README.md for setup instructions.

## 📌 Notes

Use source ~/.zshrc to reload configuration after changes.

All configs are modular and organized by purpose for clarity and reuse.
