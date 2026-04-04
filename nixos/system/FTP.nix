{
  services.vsftpd = {
    enable = true;
    localUsers = true;
    writeEnable = false;
    chrootlocalUser = true;
  };

  networking.firewall.allowedTCPPorts = [ 20 21 ];
  networking.firewall.allowedTCPPortRanges = [
    { from = 40000; to = 40100; }
  ];
}
