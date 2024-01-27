{ pkgs, lib, inputs, ... }:
let
  vscode-exts = inputs.nix-vscode-extensions.extensions.x86_64-linux;
  ovsx = vscode-exts.open-vsx-release;

  exts-nix = with pkgs.vscode-extensions; [
    christian-kohler.path-intellisense
    elixir-lsp.vscode-elixir-ls
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

  exts-vsm = with vscode-exts.vscode-marketplace-release; [
    activitywatch.aw-watcher-vscode
  ];

  exts = exts-nix ++ exts-vsm;
in
{
  programs.vscode = {
    enable = true;
    haskell = {
      enable = true;
      hie.enable = false;
    };
    extensions = exts;
    userSettings = {
      "editor.formatOnSave" = true;
      "workbench.colorTheme" = lib.mkForce "dark+(elixir)";
      "window.zoomLevel" = 1;
      "elixir.credo.checkWithoutTag" = [ "no_editor" ];
      "editor.fontLigatures" = true;
    };
  };
}
