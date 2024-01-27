{ config, lib, pkgs, stylix, nix-vscode-extensions, ... }:
{
  imports = [
    ./games
    ./gui
    ./media
    ./office
    ./programming
    ./shell
    ./web
    ./gpg.nix
    ./kitty.nix
  ];
}
