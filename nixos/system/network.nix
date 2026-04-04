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


services.cloudflared = {
  enable = true;
  tunnels = {
    "jellyfin" = {
      credentialsFile = "/etc/d6603e70-e728-4340-a3d9-8ce0be1eb952.json";
      default = "http_status:404";
      ingress = {
        "jonzuk.us" = "http://10.0.0.162:8096";
      };
    };
  };
};



}

