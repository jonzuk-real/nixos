{ pkgs, config, libs, ... }:
 {
 # List services that you want to enable:




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
}

