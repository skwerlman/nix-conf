{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    xwayland = {
      enable = true;
    };
    nvidiaPatches = false;
    extraConfig = builtins.readFile ../../../resources/conf/hyprland.conf +
      # ensure its always possible to logout
      "bind=SUPER_SHIFT,Q,exec,${pkgs.wlogout}/bin/wlogout\n";
  };
}
