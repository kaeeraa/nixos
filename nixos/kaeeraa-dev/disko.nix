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
        persist = {
          type = "zfs_fs";
          mountpoint = "/persist";
        };
        swap = {
          type = "zfs_volume";
          size = "16G";
          content.type = "swap";
          options = {
            volblocksize = "4096";
            compression = "zle";
            logbias = "throughput";
            sync = "always";
            primarycache = "metadata";
            secondarycache = "none";
            "com.sun:auto-snapshot" = "false";
          };
        };
      };
    };
  };
}
