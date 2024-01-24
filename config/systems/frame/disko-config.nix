{
  disko.devices = {
    disk = {
      nvme0n1 = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "512M";
              type = "C12A7328-F81F-11D2-BA4B-00A0C93EC93B";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [
                  "defaults"
                  "fmask=0077"
                  "umask=0077"
                ];
              };
            };
            luks = {
              size = "100%";
              type = "CA7D7CCB-63ED-4C53-861C-1742536059CC";
              content = {
                type = "luks";
                name = "crypted";
                passwordFile = "/tmp/secret.key";
                settings = {
                  allowDiscards = true;
                };
                additionalKeyFiles = [ "/tmp/additionalSecret.key" ];
                content = {
                  type = "lvm_pv";
                  vg = "pool";
                };
              };
            };
          };
        };
      };
    };
    lvm_vg = {
      pool = {
        type = "lvm_vg";
        lvs = {
          swap = {
            size = "16G";
            content = {
              type = "swap";
              resumeDevice = true;
            };
          };
          system = {
            size = "100%FREE";
            content = {
              type = "btrfs";
              extraArgs = [ "-f" ];
              subvolumes = {
                "/root" = {
                  mountpoint = "/";
                  mountOptions = [
                    "compress-force=zstd:5"
                    "noatime"
                    "nodiratime"
                    "ssd"
                    "space_cache=v2"
                    "autodefrag"
                    "discard=async"
                  ];
                };
                "/home/sk" = {
                  mountpoint = "/";
                  mountOptions = [
                    "compress-force=zstd:5"
                    "noatime"
                    "nodiratime"
                    "ssd"
                    "space_cache=v2"
                    "autodefrag"
                    "discard=async"
                  ];
                };
                "/nix" = {
                  mountpoint = "/";
                  mountOptions = [
                    "compress-force=zstd:5"
                    "noatime"
                    "nodiratime"
                    "ssd"
                    "space_cache=v2"
                    "autodefrag"
                    "discard=async"
                  ];
                };
                "/var/log" = {
                  mountpoint = "/";
                  mountOptions = [
                    "compress-force=zstd:5"
                    "noatime"
                    "nodiratime"
                    "ssd"
                    "space_cache=v2"
                    "autodefrag"
                    "discard=async"
                  ];
                };
                "/var/lib" = {
                  mountpoint = "/";
                  mountOptions = [
                    "compress-force=zstd:5"
                    "noatime"
                    "nodiratime"
                    "ssd"
                    "space_cache=v2"
                    "autodefrag"
                    "discard=async"
                  ];
                };
              };
            };
          };
        };
      };
    };
  };
}
