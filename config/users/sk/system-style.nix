{ pkgs, ... }:

{
  stylix = {
    image = ../../../resources/wallpaper/racetrack.jpg;
    polarity = "dark";
    fonts = {
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      monospace = {
        package = pkgs.nerdfonts;
        name = "FiraCode Nerd Font Mono";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        desktop = 12;
        applications = 15;
        terminal = 15;
        popups = 12;
      };
    };
    targets = {
      gtk.enable = true;
      kde.enable = true;
    };
  };
}
