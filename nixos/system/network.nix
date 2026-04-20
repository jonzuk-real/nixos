{ pkgs, config, libs, ... }:


{
networking.nameservers = [ "1.1.1.1" "9.9.9.9" ];
networking.firewall = {
  enable = true;
  allowedTCPPorts = [ 80 443 8096 32400];
  allowedUDPPorts = [ 1900 5353 ];
  allowedUDPPortRanges = [
    { from = 32410; to = 32414; }
    { from = 8096; to = 8096; }
  ];
};





}

