# 🌀 Nix-powered Portable Dev Shell

> First, install Nix if you don't have it:

```bash
curl -L https://nixos.org/nix/install | sh
. ~/.nix-profile/etc/profile.d/nix.sh
```

This project provides a **portable, reproducible shell environment** that simulates an Arch Linux CLI experience using **Nix**. It includes popular terminal tools, a themed Zsh shell with plugins, and auto-loads your Powerlevel10k configuration — all without affecting your host system.

No Docker. No system-wide installs. Just clean, isolated developer joy.

---

## 🚀 Features

- 🐚 Zsh shell with Oh My Zsh
- 🎨 [Powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
- ⚙️ Plugins:
  - `zsh-syntax-highlighting`
  - `zsh-autosuggestions`
- 🧰 CLI tools:
  - `fzf`, `bat`, `lazygit`, `btop`, `lsd`, `ripgrep`, `navi`, `tldr`, `gitui`, `duf`, `procs`, etc.
- 🧼 Fully ephemeral — nothing persists after exiting
- ✅ Cross-distro — works on Ubuntu, macOS, Fedora, etc.

---

## 📁 Project Structure

```
.
├── shell.nix              # Defines the Nix environment
├── .zshrc                 # Custom Zsh config (uses Powerlevel10k)
├── .p10k.zsh              # Your Powerlevel10k theme config
└── install-plugins.zsh    # Installs Oh My Zsh + plugins
```

---

## ⚙️ Requirements

- [Nix](https://nixos.org/download) (single-user or multi-user)
- Unix-like OS (Linux, macOS, WSL)

---

## ▶️ Usage

```bash
git clone <this-repo>
cd my-dev-env
nix-shell
```

This will:
- Download all tools from the Nix cache
- Install Oh My Zsh + Powerlevel10k locally
- Start Zsh with your custom config and aliases

To exit:
```bash
exit
```

---

## 📦 What’s Inside?

| Tool      | Purpose                            |
|-----------|------------------------------------|
| `zsh`     | Modern shell                       |
| `fzf`     | Fuzzy finder                       |
| `bat`     | `cat` with syntax highlighting     |
| `lsd`     | `ls` with icons                    |
| `btop`    | Resource monitor                   |
| `lazygit` | Git UI                             |
| `gitui`   | Fast TUI Git client                |
| `ripgrep` | Fast grep alternative              |
| `navi`    | Shell cheat sheet tool             |
| `tldr`    | Simplified man pages               |
| `procs`   | Better `ps`                        |
| `duf`     | Disk usage                         |
| `neofetch`| System info                        |
| `rustup`  | Rust installer (if needed)         |
| `tmux`    | Terminal multiplexer               |

---

## 🧪 Notes

- Your `.zshrc` and `.p10k.zsh` are sourced **only inside** the shell.
- If Oh My Zsh or plugins are already installed, they will not reinstall.
- No files are written outside this project directory.
- You can add or remove packages from `shell.nix`.

---

## 🧹 Cleanup

Just delete the project folder — no global installs, no `sudo`, no trace left behind.

---

## 💬 Tip

For faster startup and evaluation caching, consider switching to [`nix develop` with flakes](https://nixos.wiki/wiki/Flakes). Ask me for help converting!

---

## 📄 License

MIT — do whatever you want.

