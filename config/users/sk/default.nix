{ config, lib, pkgs, stylix, ... }:
{
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  imports = [
    ./user.nix
  ];

  stylix = import ./config/style.nix;
}
