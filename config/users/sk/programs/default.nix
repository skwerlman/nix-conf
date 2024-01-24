{ config, lib, pkgs, stylix, ... }:
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
