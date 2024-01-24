{
  services = {
    greetd = {
      enable = true;
    };

    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
    };

    fwupd = {
      enable = true;
    };

    blueman = {
      enable = true;
    };
  };
}
