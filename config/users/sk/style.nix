{ pkgs, ... }:
{
  stylix = {
    targets = {
      kitty.variant256Colors = true;
      swaylock.useImage = true;
    };
  };

  gtk = {
    enable = true;
    theme = { name = "Stylix"; };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };
}
