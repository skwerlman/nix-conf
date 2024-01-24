{ config, pkgs, ... }:
{
  imports = [
    ./swaylock.nix
    ./waybar.nix
  ];
}
