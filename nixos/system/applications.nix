{ pkgs, config, libs, ... }:
{


#List packages installed in system profile. To search, run:
  # $ nix search wget

environment.systemPackages = with pkgs; [
	nerdfonts
#	tofi
	home-manager
	openjdk
	font-awesome
	xorg.xhost
	lxqt.lxqt-policykit
	waybar-mpris
	swaynotificationcenter
	pkgs.nerdfonts
	xfce.thunar
	xfce.thunar-volman
	gvfs
	pkgs.grim
	pkgs.slurp
	pkgs.wl-clipboard
	swww
	rofi-wayland
	rofimoji
	rofi-vpn
	kitty
	pkgs.dunst
	libnotify
	pkgs.waybar
	plex
	pkgs.unrar
	pkgs.sway
	pkgs.linuxHeaders
	pkgs.looking-glass-client
	libguestfs
	pkgs.virtiofsd
	pkgs.blender-hip
	pkgs.gparted
#	pkgs.vmware-workstation
	pkgs.htop
	pkgs.pcsclite
	pkgs.reaper
	pkgs.xboxdrv
	pkgs.adguardhome
#	pkgs.opensnitch
#	pkgs.opensnitch-ui
	pkgs.nettools
	pkgs.linuxKernel.packages.linux_5_4.wireguard
	pkgs.networkmanager
	pkgs.wireguard-tools
	# support both 32- and 64-bit applications
        wineWowPackages.stable
	winetricks
	dxvk
	vkd3d
	vkd3d-proton
	cdemu-client
	cdemu-daemon
	wineasio
	nfs-utils 
	lshw
	ntfs3g
	bluez
	virglrenderer
	virtio-win
	pkgs.xfce.xfce4-whiskermenu-plugin
	pkgs.xfce.xfce4-settings	
#	gnome3.adwaita-icon-theme # default gnome cursors
#	glib 
];
}

