{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableVteIntegration = true;
    dotDir = "${config.xdg.configHome}/zsh";
    history = {
      extended = true;
      path = "${config.xdg.configHome}/zsh/history";
      save = 100000;
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
    };
    syntaxHighlighting = {
      enable = true;
    };
    zprof.enable = true;
  };
}
