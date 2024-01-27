{ config, ... }:

{
  xdg = {
    enable = true;
    cacheHome = "${config.home.homeDirectory}/.local/cache";
    configHome = "${config.home.homeDirectory}/.config";
    dataHome = "${config.home.homeDirectory}/.local/share";
    desktopEntries = { };
    userDirs = {
      enable = true;
      createDirectories = true;
      extraConfig = {
        XDG_GAMES_DIR = "${config.home.homeDirectory}/Games";
        XDG_CODE_DIR = "${config.home.homeDirectory}/Code";
      };
    };
  };
}
