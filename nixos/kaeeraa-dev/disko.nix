{
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/sdb";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1024M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = ["umask=0077"];
              };
            };
            root = {
              size = "170.2G";
              type = "BF00";
              content = {
                type = "zfs";
                pool = "zroot";
              };
            };
            swap = {
              size = "16G";
              type = "8200";
              content = {
                type = "swap";
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
      mode = "";
      rootFsOptions = {
        compression = "lz4";
      };
      datasets = {
        root = {
          type = "zfs_fs";
          mountpoint = "/";
          options.mountpoint = "/";
        };
        home = {
          type = "zfs_fs";
          mountpoint = null;
          options = {
            encryption = "aes-256-gcm";
            keyformat = "passphrase";
            keylocation = "prompt";
          };
        };
      };
    };
  };
}
