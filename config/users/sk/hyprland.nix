{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland = {
      enable = true;
    };
    enableNvidiaPatches = false;
    extraConfig = builtins.readFile ../../../resources/conf/hyprland.conf +
      # ensure its always possible to logout
      "bind=SUPER_SHIFT,Q,exec,${pkgs.wlogout}/bin/wlogout\n";
  };
}
