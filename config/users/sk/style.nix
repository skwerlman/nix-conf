{ pkgs, lib, ... }:
{
  stylix = {
    targets = {
      kde.enable = true;
      gnome.enable = true;
      gtk.enable = true;
      kitty.variant256Colors = true;
      swaylock.useImage = true;
    };
  };

  gtk = {
    enable = true;
    theme = { name = lib.mkForce "Stylix"; };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme = "qtct";
  };
}
