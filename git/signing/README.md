# 🟢 Git Commit Signing

Secure your Git history by signing your commits and tags using **GPG** or **SSH**.

## 📌 Why Sign Commits?

- Verify authorship of commits and tags.
- Build trust and authenticity in collaborative environments.
- Required in some professional and open-source workflows.

---

## 🔐 GPG Signing Setup

### Install GPG (if not installed)

To sign your commits with GPG, you need the `gpg` CLI tool.
On macOS, the recommended way is via Homebrew:

```bash
brew install gnupg
## 1. Generate a new GPG key
```

```bash

gpg --full-generate-key
```

### 📌 Choose

Key type: RSA (default)

Key size: 4096 bits

Expiration: 1 year or none

Name & email: use the same email as your Git identity

## 2. List available GPG keys

```bash
gpg --list-secret-keys --keyid-format=long
```

Copy the key ID (e.g. ABCD1234EFGH5678).

## 3. Configure Git to sign commits

```bash
git config --global user.signingkey ABCD1234EFGH5678
git config --global commit.gpgsign true
```

## 4. Export your public key to GitHub (or other providers)

```bash
gpg --armor --export ABCD1234EFGH5678
```

Copy and paste it to GitHub > Settings > SSH and GPG keys > New GPG key.

Optional: Show verified badge in GitHub

```bash
git config --global gpg.program $(which gpg)
```

Make sure your Git email and GPG key email match.

## ⭐️ Fix: agent_genkey failed: No such file or directory

This issue occurs when GnuPG cannot find or start its agent or required directories are missing. It's common after a fresh GPG installation (e.g. via Homebrew).

## 🛠️ Final Fix

```bash
# Create required GnuPG directories (if missing)
mkdir -p ~/.gnupg

# Set correct permissions
chmod 700 ~/.gnupg

# Create default config files (optional but recommended)
touch ~/.gnupg/gpg.conf
touch ~/.gnupg/gpg-agent.conf

# Restart the gpg-agent to apply changes
gpgconf --kill gpg-agent
gpgconf --launch gpg-agent

# Now retry key generation
gpg --full-generate-key
```

## 📌 Possibly broken GPG config

```bash
# Backup the current (possibly broken) GPG config
mv ~/.gnupg ~/.gnupg.bak

# Create a fresh GPG directory with proper permissions
mkdir ~/.gnupg
chmod 700 ~/.gnupg

# Kill any running GPG agent just in case
gpgconf --kill gpg-agent

# Try generating the key again
gpg --full-generate-key
```

### 📌 Notes

Make sure GPG was installed correctly:
Run `which gpg` – it should return a valid path (e.g. /opt/homebrew/bin/gpg)

On macOS, ~/.gnupg must exist and be writable by the current user.

These fixes are persistent – you only need to run them once after install.

## ⭐️ Git Commit Signing with GPG

## Introduction

This guide explains how to generate and use a GPG key to sign your Git commits and tags. Signing verifies the authenticity of your commits, proving they come from you. This setup is essential for secure and trusted collaboration.

## ⭐️ Step 1: Prerequisites

- GPG installed (recommended via Homebrew on macOS: `brew install gnupg`)
- Git configured on your system

## ⭐️ Step 2: Get Your GPG Key ID

```bash
gpg --list-secret-keys --keyid-format=long
```

## ⭐️ Step 3: Configure Git to Use Your GPG Key

```bash
git config --global user.signingkey <YOUR-GPG-KEY-ID>
git config --global commit.gpgsign true
```

## ⭐️ Step 4: Add Your Public Key to GitHub

```bash
gpg --armor --export <YOUR-GPG-KEY-ID>
```

## ⭐️ Step 5: Sign Your Commits

```bash
git commit -S -m "Your commit message"
```

## 📌 Verification

```bash
git log --show-signature
```

---

## 🟢 SSH Signing (Git 2.34+)

## 1. Generate a new SSH key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## 2. Enable SSH commit signing

```bahs
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub
git config --global commit.gpgsign true
```

## 3. Add SSH public key to GitHub

Copy the contents of:

```bash
cat ~/.ssh/id_ed25519.pub
```

📌 Then paste it into GitHub > Settings > SSH and GPG Keys.

💡 Tip: Sign individual commits only (optional)

```bash
git commit -S -m "feat: sign only this one"
```

### 📌 Verify signed commits

```bash
git log --show-signature
```

You should see something like:

```bash
gpg: Signature made ...
gpg: Good signature from ...
```

### 💡 Best Practices

Use GPG if you want fine-grained control and broad tool support.

Use SSH signing for easier setup and GitHub-only workflows.

Backup your keys securely (especially private keys).