{ pkgs, lib, ... }:
{
  programs.vscode = {
    enable = true;
    haskell = {
      enable = true;
      hie.enable = false;
    };
    extensions = with pkgs.vscode-extensions; [
      gitlab.gitlab-workflow
      haskell.haskell
      justusadam.language-haskell
      kamikillerto.vscode-colorize
      mechatroner.rainbow-csv
      ms-python.python
      ms-python.vscode-pylance
      ms-vsliveshare.vsliveshare
      phoenixframework.phoenix
      tamasfe.even-better-toml
      timonwong.shellcheck
    ];
    userSettings = {
      "editor.formatOnSave" = true;
      "workbench.colorTheme" = lib.mkForce "dark+(elixir)";
      "window.zoomLevel" = 1;
      "elixir.credo.checkWithoutTag" = [ "no_editor" ];
    };
  };
}
