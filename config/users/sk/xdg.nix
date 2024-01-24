{ config, ... }:

{
  xdg = {
    enable = true;
    cacheHome = "${config.home.homeDirectory}/.local/cache";
    configHome = "${config.home.homeDirectory}/.local/config";
    dataHome = "${config.home.homeDirectory}/.local/share";
    desktopEntries = { };
    userDirs = {
      enable = true;
      createDirectories = true;
      extraConfig = {
        XDG_GAMES_DIR = "${config.home.homeDirectory}/Games";
      };
    };
  };
}
