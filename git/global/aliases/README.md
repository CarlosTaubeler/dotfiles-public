# 📄 Git Aliases

This file documents the Git-related aliases used in the Zsh environment (`zsh/aliases.zsh`).
They are designed to improve CLI efficiency by reducing repetitive typing and maintaining consistency.

> 🔁 These aliases are **executed** via your Zsh config and **documented** here for reference only.

---

## 📌 Aliases Overview

| Alias   | Command                            | Description                            |
|--------:|------------------------------------|----------------------------------------|
| `gs`    | `git status`                       | Show working tree status               |
| `gc`    | `git commit`                       | Create a new commit                    |
| `gcl`   | `git clone`                        | Clone a Git repository                 |
| `gb`    | `git branch`                       | List, create, or delete branches       |
| `gco`   | `git checkout`                     | Switch to another branch               |
| `gcb`   | `git checkout -b`                  | Create and switch to a new branch      |
| `gpl`   | `git pull`                         | Fetch and merge changes                |
| `gpu`   | `git push`                         | Push local changes to remote           |
| `gaa`   | `git add .`                        | Stage all changes                      |
| `gcm`   | `git commit -m`                    | Commit with inline message             |
| `gca`   | `git commit --amend`               | Amend the last commit                  |
| `glg`   | `git log --oneline --graph ...`    | Graphical commit log overview          |

---

## 🧩 Usage

These aliases are automatically loaded via:

```zsh
source "$ZSH_CUSTOM/aliases.zsh"
```

## 🛠️ Maintenance

Add new Git aliases to zsh/aliases.zsh.

Document them here to keep things synchronized.

❗️Avoid adding system, Node.js, or Docker-related aliases in this file.
