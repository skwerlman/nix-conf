{ config, pkgs, ... }:
{
  imports = [
    ./browserpass.nix
    ./librewolf.nix
    ./password-store.nix
    ./ssh.nix
    ./thunderbird.nix
  ];
}
