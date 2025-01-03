{ pkgs, chaotic, ... }:

{
  environment.systemPackages = [ pkgs.lan-mouse_git ];
  chaotic.hdr.enable = true;  # Ensure this matches the correct option name
}
