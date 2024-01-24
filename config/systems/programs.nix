{ config, pkgs, common-attrs, ... }:
let
  regreet-override = pkgs.greetd.regreet.overrideAttrs (final: prev: {
    SESSION_DIRS = "${config.services.xserver.displayManager.sessionData.desktops}/share";
  });
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
          theme_name = common-attrs.gtk-theme.cursorTheme.name;
          icon_theme_name = common-attrs.gtk-theme.cursorTheme.name;
          cursor_theme_name = common-attrs.gtk-theme.cursorTheme.name;
          font_name = "${common-attrs.gtk-theme.font.name} 12";
        };
      };
    };
  };
}
