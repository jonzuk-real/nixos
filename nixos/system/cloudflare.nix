{ pkgs, config, libs, ... }:
{


  services.cloudflared = {
    enable = true;
    tunnels = {
      "dfc09c46-6017-4f6f-af56-771234a0e658" = {
        credentialsFile = "/home/jon/.cloudflared/dfc09c46-6017-4f6f-af56-771234a0e658.json";
        ingress = {
          "jonzuk.us" = "http://10.0.0.162:8096";
        };
        default = "http_status:404";
      };
    };
  };
  # Make service run as your user so it can read ~/.cloudflared/
  systemd.services."cloudflared-tunnel-jellyfin".serviceConfig.User = "cloudflared";


}
