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

    # lanzaboote = {
    #   enable = true;
    #   pkiBundle = "/etc/secureboot";
    # };

    plymouth = {
      enable = true;
    };

    tmp = {
      cleanOnBoot = true;
    };

    initrd.systemd.enable = true;
    initrd.verbose = false;
    consoleLogLevel = 0;
    kernelParams = [ "quiet" "udev.log_level=3" ];
    kernelModules = [ "coretemp" ];
  };
}
