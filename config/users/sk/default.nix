{ config, lib, pkgs, stylix, nix-vscode-extensions, ... }:
{
  home-manager.extraSpecialArgs = { nix-vscode-extensions = nix-vscode-extensions; };
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  imports = [
    ./user.nix
    ./system-style.nix
  ];
}
