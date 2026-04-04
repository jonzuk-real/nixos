{ pkgs, config, libs, ... }:


{
networking.nameservers = [ "1.1.1.1" "9.9.9.9" ];
networking.firewall = {
  enable = true;
  allowedTCPPorts = [ 80 443 8096 ];
  allowedUDPPortRanges = [
   # { from = 4000; to = 4007; }
    { from = 8096; to = 8096; }
  ];
};












}

