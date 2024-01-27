{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableVteIntegration = true;
    # dotDir is prefixed with $HOME so we cant use an absolute path :(
    dotDir = ".config/zsh";
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
    # zprof.enable = true;
  };
}
