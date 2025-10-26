{
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
    "vm.dirty_ratio" = 10;
    "vm.dirty_background_ratio" = 2;
    "vm.vfs_cache_pressure" = 50;

    "net.core.rmem_max" = 4194304;
    "net.core.wmem_max" = 4194304;
    "net.ipv4.tcp_rmem" = "4096 87380 4194304";
    "net.ipv4.tcp_wmem" = "4096 65536 4194304";
    "net.core.netdev_max_backlog" = 5000;
    "net.core.somaxconn" = 4096;
    "kernel.nmi_watchdog" = 0;
  };
}
