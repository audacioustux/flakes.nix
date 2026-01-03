{ pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      # dev tools
      curl
      neovim
      helix
      zellij
      btop
      tree
      ripgrep
      gh
      zoxide
      direnv

      # fonts
      nerd-fonts.monaspace
    ];
  };
}
