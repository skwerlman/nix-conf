{ config, lib, pkgs, stylix, ... }:
{
  imports = [
    ./desktop
    ./media
    ./git-sync.nix
    ./gpg-agent.nix
    ./ssh-agent.nix
  ];
}
