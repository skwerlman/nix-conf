{ config, pkgs, ... }:
{
  imports = [
    ./atuin.nix
    ./autojump.nix
    ./fzf.nix
    ./nix-index.nix
    ./script-directory.nix
    ./starship.nix
    ./zsh.nix
  ];
}
