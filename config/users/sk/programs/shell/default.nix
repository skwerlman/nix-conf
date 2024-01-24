{ config, pkgs, ... }:
{
  imports = [
    ./zsh
    ./aria2.nix
    ./bat.nix
    ./broot.nix
    ./btop.nix
    ./eza.nix
    ./jq.nix
    ./less.nix
    ./man.nix
    ./ripgrep.nix
    ./tealdeer.nix
    ./yazi.nix
  ];
}
