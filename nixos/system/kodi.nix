



{
  services.xserver.enable = true;
  services.xserver.desktopManager.kodi.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "kodi";

 # This may be needed to force Lightdm into 'autologin' mode.
 # Setting an integer for the amount of time lightdm will wait
 # between attempts to try to autologin again. 
  services.xserver.displayManager.lightdm.autoLogin.timeout = 3;

  # Define a user account
  users.extraUsers.kodi.isNormalUser = true;
}

{
  networking.firewall = {
    allowedTCPPorts = [ 8080 ];
    allowedUDPPorts = [ 8080 ];
  };
}

{
  # Define a user account
  users.extraUsers.kodi.isNormalUser = true;
  services.cage.user = "kodi";
  services.cage.program = "${pkgs.kodi-wayland}/bin/kodi-standalone";
  services.cage.enable = true;
}
{
nixpkgs.config.kodi.enableAdvancedLauncher = true;
}
{
environment.systemPackages = [
	(pkgs.kodi.passthru.withPackages (kodiPkgs: with kodiPkgs; [
		jellyfin
	]))
];


}
