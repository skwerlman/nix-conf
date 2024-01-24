{
  boot = {
    bootspec = {
      enable = true;
    };

    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "max";
        memtest86.enable = true;
      };
      efi.canTouchEfiVariables = true;
    };

    plymouth = {
      enable = true;
    };

    tmp = {
      cleanOnBoot = true;
    };
  };
}
