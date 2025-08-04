{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/vda";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "2048M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = ["umask=0077"];
              };
            };
            swap = {
              size = "4G";
              type = "8200";
              content.type = "swap";
            };
            root = {
              size = "100%";
              type = "BF00";
              content = {
                type = "zfs";
                pool = "zroot";
              };
            };
          };
        };
      };
    };
  };
  disko.devices.zpool = {
    zroot = {
      type = "zpool";
      rootFsOptions = {
        compression = "zstd";
      };
      datasets = {
        root = {
          type = "zfs_fs";
          mountpoint = "/";
          options = {
            mountpoint = "/";
            compression = "zstd";
            atime = "on";
          };
        };
        nix = {
          type = "zfs_fs";
          mountpoint = "/nix";
          options = {
            compression = "zstd";
            atime = "off";
          };
        };
        home = {
          type = "zfs_fs";
          mountpoint = null;
          options = {
            compression = "zstd";
            atime = "on";
          };
        };
      };
    };
  };
}
