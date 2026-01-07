# Nix macOS Configuration

Declarative macOS setup using [Nix](https://nixos.org/), [nix-darwin](https://github.com/LnL7/nix-darwin), and [Home Manager](https://github.com/nix-community/home-manager).

## Prerequisites

Install Nix using the [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer):

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Adopting This Config

1. Clone/fork this repo
2. Search for `# CHANGE:` comments and update values to match your setup:
   - `flake.nix` — username, hostname, architecture
   - `home/git.nix` — git user, email, GPG key, GitHub username
   - `home/gpg.nix` — GPG SSH keygrip
   - `hosts/` — rename directory to match your hostname

## First Run

```bash
sudo nix run nix-darwin -- switch --flake .#<your-hostname>
```

## Daily Usage

```bash
darwin-rebuild switch --flake .
```

## Structure

- `flake.nix` — Entry point and inputs
- `darwin/` — System-level configuration
- `home/` — User-level configuration (Home Manager)
- `hosts/` — Host-specific overrides
