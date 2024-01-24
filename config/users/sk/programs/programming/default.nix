{ config, pkgs, ... }:
{
  imports = [
    ./git.nix
    ./lazygit.nix
    ./vscode.nix
  ];
}
