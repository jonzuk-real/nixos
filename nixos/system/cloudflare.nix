{ pkgs, config, libs, ... }:
{


  services.cloudflared = {
    enable = true;
    tunnels = {
      "9fa2bac9-8d5d-47f8-b7d3-d7263f175a87." = {
        credentialsFile = "/home/jon/.cloudflared/9fa2bac9-8d5d-47f8-b7d3-d7263f175a87..json";
        ingress = {
          "jonzuk.us" = "http://10.0.0.162:8096";
        };
        default = "http_status:404";
	
#systemd.services."cloudflared-tunnel-dfc09c46-6017-4f6f-af56-771234a0e658".environment.QUIC_GO_DISABLE_RECEIVE_BUFFER_WARNING = "true";
      };
    };
  };
  # Make service run as your user so it can read ~/.cloudflared/
  systemd.services."cloudflared-tunnel-jellyfin".serviceConfig.User = "cloudflared";
#  systemd.services."cloudflared-tunnel-dfc09c46-6017-4f6f-af56-771234a0e658".environment.QUIC_GO_DISABLE_RECEIVE_BUFFER_WARNING = "true";

}
