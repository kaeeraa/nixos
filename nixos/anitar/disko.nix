{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/vda";
        content = {
          type = "gpt";
          efiGptPartitionFirst = false;
          partitions = {
            bios = {
              size = "1M";
              type = "EF02";
            };
            boot = {
              size = "512M";
              type = "8300";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/boot";
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
          mountpoint = "/home";
          options = {
            compression = "zstd";
            atime = "on";
          };
        };
      };
    };
  };
}
