{ config, lib, pkgs, modulesPath, ... }:
{
  imports = [
    ./hardware-config.nix
    ./disko-config.nix
  ];
}
