{ config, pkgs, nix-vscode-extensions, ... }:
{
  imports = [
    ./git.nix
    ./lazygit.nix
    ./vscode.nix
  ];
}
