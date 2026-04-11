{ config, pkgs, inputs, ... }:

{
 services.plex = {
   enable = true;
   openFirewall = true;
   user = "jon";
};   
}
