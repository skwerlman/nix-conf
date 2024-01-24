{ config, pkgs, ... }:
let
  regreet-override = pkgs.greetd.regreet.overrideAttrs (final: prev: {
    SESSION_DIRS = "${config.services.xserver.displayManager.sessionData.desktops}/share";
  });
  theme = "Stylix";
in
{
  programs = {
    regreet = {
      package = regreet-override;
      enable = true;
      settings = {
        background = {
          path = ../../resources/wallpaper/ludens.jpg;
          fit = "Cover";
        };
        GTK = {
          application_prefer_dark_theme = true;
          theme_name = theme;
          icon_theme_name = theme;
          cursor_theme_name = theme;
          font_name = "Noto Sans 12";
        };
      };
    };
  };
}
