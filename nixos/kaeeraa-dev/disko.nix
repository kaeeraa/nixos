{
  disko.devices = {
    disk.main = {
      type = "disk";
      device = "/dev/disk/by-id/ata-WALRAM_512GB_AA000000000000002946";

      content = {
        type = "gpt";
        partitions = {
          ESP = {
            size = "4096M";
            type = "EF00";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
              mountOptions = ["umask=0077"];
            };
          };
          swap = {
            size = "16G";
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

  disko.devices.zpool.zroot = {
    type = "zpool";
    rootFsOptions = {
      compression = "zstd";
      atime = "off";
    };

    datasets = {
      root = {
        type = "zfs_fs";
        mountpoint = "/";
        options.mountpoint = "/";
      };
      nix = {
        type = "zfs_fs";
        mountpoint = "/nix";
        options = {
          atime = "off";
          compression = "zstd";
        };
      };
      home = {
        type = "zfs_fs";
        mountpoint = "/home";
        options = {
          compression = "zstd";
          atime = "off";
          encryption = "aes-256-gcm";
          keyformat = "passphrase";
          keylocation = "prompt";
        };
      };
      "home/kaeeraa" = {
	type = "zfs_fs";
	mountpoint = "/home/kaeeraa";
	options = {
	  atime = "off";
	  compression = "zstd";
	};
      };
    };
  };
}
