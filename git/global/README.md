# 🟢 Git Configuration – Global Setup

This document contains essential Git configuration steps that should be applied globally on any development machine.

---

## 1. Create a global `.gitignore` file

This file tells Git which files to always ignore, regardless of the project.

```bash
# Create the global gitignore file (if not already created)
touch ~/.gitignore_global

# Example: Ignore macOS system files
echo ".DS_Store" >> ~/.gitignore_global
```

## 2. Configure Git to use the global ignore file

```bash
git config --global core.excludesfile ~/.gitignore_global
```

#### 💡 You can verify this with:

```bash
git config --global core.excludesfile
```

## 3. Version-control the .gitignore_global in your dotfiles

Move the file into your dotfiles repo and link it back to ~:

```bash
# Move file into dotfiles
mv ~/.gitignore_global ~/dev/dotfiles/git/.gitignore_global

# Create a symbolic link to the expected location
ln -sf ~/dev/dotfiles/git/.gitignore_global ~/.gitignore_global
```

# 🟢 Git Commit Template

This directory contains a `.gitmessage` file to provide consistent commit message structure.

## Setup

```bash
git config --global commit.template ~/dev/dotfiles/git/global/.gitmessage

# For VSCode usage:
git config --global core.editor "code --wait"
```

## Usage

Now when you run (without -m):

```bash
git commit
```

Git will open your default editor with the commit message structure prefilled.
**Overwrite the first line with your commit message** (e.g. feat(ui): add dark mode toggle), then save and close to complete the commit.

```bash
# Verify that your commit was successfully created.
# Use this to view recent commits.
git log --oneline
```
