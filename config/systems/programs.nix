{ config, pkgs, ... }:
{
  programs = {
    regreet = {
      enable = true;
      settings = {
        background = {
          path = ../../resources/wallpaper/ludens.jpg;
        };
        GTK = {
          application_prefer_dark_theme = true;
          theme_name = "Stylix";
        };
      };
    };
  };
}
