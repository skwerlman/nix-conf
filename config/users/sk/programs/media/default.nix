{ config, pkgs, ... }:
{
  imports = [
    ./newsboat.nix
    ./yt-dlp.nix
  ];
}
