{ pkgs, config, libs, ... }:
 {
 # List services that you want to enable:

#qt theming
qt.enable = true;
qt.platformTheme = "gtk2";
qt.style = "adwaita-dark";

	hardware.xone.enable = true; # support for the xbox controller USB dongle
#	services.xserver.videoDrivers = [ "vmware" ];
#	virtualisation.vmware.guest.enable = true;
#	virtualisation.vmware.host.enable = true;

	virtualisation.virtualbox.host.enable = true;
   	users.extraGroups.vboxusers.members = [ "jon" ];
	virtualisation.virtualbox.guest.enable = true;
  	virtualisation.virtualbox.guest.draganddrop = true;
#	virtualisation.virtualbox.host.enable = true;
   	virtualisation.virtualbox.host.enableExtensionPack = true;
	


	services.gnome.gnome-keyring.enable = true;
	programs.xfconf.enable = true;
	services.gvfs.enable = true; # Mount, trash, and other functionalities
	services.tumbler.enable = true; # Thumbnail support for images
	services.resolved.enable = true;
	programs.wayfire.enable = true;
#	programs.stable.hyprland.enable = true;
	virtualisation.waydroid.enable = true;
	security.polkit.enable = true;
        services.adguardhome.enable = true;
#       services.opensnitch.enable = true;
        services.geoclue2.enable = true;
	services.flatpak.enable = true;
	services.blueman.enable = true;
	services.pcscd.enable = true;
 	services.printing.enable = true;
	hardware.bluetooth.enable = true;
	programs.gamemode.enable = true;
	virtualisation.spiceUSBRedirection.enable = true;
	virtualisation.libvirtd.enable = true;
	programs.virt-manager.enable = true;		

	

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
#               plasma6.enable = true;
#               gnome.enable = true;
 };
        displayManager.sddm.enable = true;
};




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
