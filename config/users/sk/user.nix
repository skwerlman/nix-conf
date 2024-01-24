{ config, lib, pkgs, stylix, ... }:
{
  home-manager.users.sk = {
    imports = [
      ./packages.nix
      ./hyprland.nix
      ./style.nix
      ./xdg.nix
      ./programs
      ./services
    ];

    home.username = "sk";
    home.homeDirectory = "/home/sk";
    home.stateVersion = "23.11";
    programs.home-manager.enable = true;
  };
}
