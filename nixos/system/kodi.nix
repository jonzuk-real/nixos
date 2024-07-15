{ pkgs, ... }: {




  services.xserver.enable = true;
  services.xserver.desktopManager.kodi.enable = true;
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "kodi";

 # This may be needed to force Lightdm into 'autologin' mode.
 # Setting an integer for the amount of time lightdm will wait
 # between attempts to try to autologin again. 
  services.xserver.displayManager.lightdm.autoLogin.timeout = 3;

  # Define a user account
#  users.extraUsers.kodi.isNormalUser = true;



  networking.firewall = {
    allowedTCPPorts = [ 8080 ];
    allowedUDPPorts = [ 8080 ];
  };

}

