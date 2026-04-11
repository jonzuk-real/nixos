{ config, pkgs, inputs,  ... }:

{
  services.jellyfin = {
  enable = true;
  openFirewall = true;
  user = "jon"; 
};
  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
}
