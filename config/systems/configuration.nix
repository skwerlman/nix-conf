{ inputs, config, lib, pkgs, ... }:

{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];

    auto-optimise-store = true;

    substituters = [
      "https://cache.nixos.org"
      "https://hyprland.cachix.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
    trusted-users = [
      "sk"
    ];
  };

  networking = {
    hostName = "frame";
    networkmanager.enable = true;
  };

  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";

  security = {
    rtkit.enable = true;
    pam.services.swaylock = { };
    polkit.enable = true;
    wrappers = {
      intel_gpu_top = {
        owner = "root";
        group = "gputop";
        capabilities = "cap_perfmon=+ep";
        source = "${pkgs.intel-gpu-tools.out}/bin/intel_gpu_top";
      };
    };
  };

  users.users.sk = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "gputop" "input" ];
    shell = pkgs.zsh;
  };
  users.groups.gputop = { };

  environment.variables = {
    EDITOR = "nano";
  };

  fonts.fontDir.enable = true;

  powerManagement.cpuFreqGovernor = "powersave";
  powerManagement.powertop.enable = true;

  system.stateVersion = "23.11";
}
