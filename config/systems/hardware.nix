{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    enableAllFirmware = true;
    opengl = {
      enable = true;
    };
    sensor = {
      hddtemp = {
        enable = true;
        drives = [
          "/dev/disk/by-uuid/nvme-WDS500G1X0E-00AFY0_21152R800777_1"
        ];
      };
    };
  };
}
