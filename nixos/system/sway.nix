{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    wl-clipboard # Copy/Paste functionality.
    mako # Notification utility.
  ];

  # Enables Gnome Keyring to store secrets for applications. 
  services.gnome.gnome-keyring.enable = true;

  # Enable Sway.
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
