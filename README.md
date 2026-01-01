# Nix macOS Configuration

Declarative macOS configuration using [Nix](https://nixos.org/), [nix-darwin](https://github.com/LnL7/nix-darwin), and [Home Manager](https://github.com/nix-community/home-manager).

## Usage

Apply the configuration:

```bash
nix-switch
# or
sudo darwin-rebuild switch --flake ~/.config/nix
```

## Structure

- `flake.nix`: Entry point and inputs.
- `darwin/`: System-level configuration.
- `home/`: User-level configuration.
- `hosts/`: Host-specific configurations.
