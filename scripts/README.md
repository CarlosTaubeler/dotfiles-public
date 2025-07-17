# Scripts Folder

This folder contains utility scripts designed to streamline common development and environment management tasks. Each script is documented individually to explain its purpose and usage.

Organizing scripts here helps keep your setup modular, reusable, and easy to maintain.

---

## ‼️ 🔧 Script Execution Setup

Before using any script in this directory, make sure it has the correct execution permissions.
You can set executable permissions for all `.sh` scripts at once with the following command:

```bash
chmod +x ~/dev/dotfiles/scripts/*.sh
```

## 🟢 keys.sh

**Purpose:**
Displays your SSH public key files, their contents, GPG secret and public keys, and the currently configured Git signing key. This helps quickly verify your cryptographic identity setup without searching multiple commands.

**Usage:**
Run the script in your terminal:

```bash
./keys.sh
```

### 📌 Notes

The script checks if SSH public keys exist before displaying them.

It lists GPG keys with long key IDs for clarity.

Make sure GPG and Git are properly configured to get accurate results.

Additional scripts can be added here following the same documentation style for clarity and easy reference.