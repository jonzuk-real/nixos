{ pkgs, config, libs, ... }:
 {
 # List services that you want to enable:


	virtualisation.waydroid.enable = true;
	security.polkit.enable = true;
        services.adguardhome.enable = true;
        services.opensnitch.enable = true;
        services.geoclue2.enable = true;
	services.flatpak.enable = true;
	services.blueman.enable = true;
	services.pcscd.enable = true;
 	services.printing.enable = true;
	hardware.bluetooth.enable = true;
	programs.gamemode.enable = true;
	programs.hyprland.enable = true;
	xdg.portal.enable = true;
        xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
		

	services.plex = {
	enable = true;
   openFirewall = true;
   user = "jon";
};	

environment.systemPackages = [
    pkgs.xorg.xdm
  ];

  # Enable the X11 windowing system.
  services.xserver = {
        enable = true;
        desktopManager = {
#               xterm.enable = false;
#               xfce.enable = true;
#               lxqt.enable = true;
#               plasma5.enable = true;
#               gnome.enable = true;
 };
        displayManager.sddm.enable = true;
};


services.xserver.windowManager.awesome.enable = true;

# Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

#Gnome De-Shitter
environment.gnome.excludePackages = with pkgs.gnome; [
    baobab      # disk usage analyzer
    cheese      # photo booth
    eog         # image viewer
    epiphany    # web browser
    gedit       # text editor
    simple-scan # document scanner
    totem       # video player
    yelp        # help viewer
    evince      # document viewer
    file-roller # archive manager
    geary       # email client
    seahorse    # password manager

    # these should be self explanatory
    gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-contacts
    gnome-font-viewer gnome-logs gnome-maps gnome-music gnome-screenshot
    gnome-system-monitor gnome-weather gnome-disk-utility pkgs.gnome-connections
  ];



}

