{ pkgs, lib, nix-vscode-extensions, ... }:
let
  vscode-exts = nix-vscode-extensions.extensions.x86_64-linux;

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

  exts-vsm = with vscode-exts.vscode-marketplace; [
    hlorenzi.customasm-vscode
    kkalita.dark-plus-elixir
    royalmist.vscode-eex-format
    adamzapasnik.elixir-test-explorer
    sztheory.hex-lens
    fnando.linter
    pomdtr.markdown-kroki
  ];

  exts-vsx = with vscode-exts.open-vsx; [
    activitywatch.aw-watcher-vscode
    ultram4rine.vscode-choosealicense
    pantajoe.vscode-elixir-credo
    joaompinto.vscode-graphviz
    jnoortheen.nix-ide
    claui.packaging
    ms-vscode.test-adapter-converter
    hbenl.vscode-test-explorer-liveshare
    hbenl.vscode-test-explorer
  ];

  exts = exts-nix ++ exts-vsm ++ exts-vsx;
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
