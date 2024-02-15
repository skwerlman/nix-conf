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
    kernelParams = [
      # quite boot for plymouth
      "quiet" "udev.log_level=3"

      # 4GB of hugepages
      "hugepagesz=2MB" "hugepages=2048"

      # IOMMU support
      "intel_iommu=on" "iommu=pt"
    ];
    kernelModules = [ "coretemp" ];
  };
}
