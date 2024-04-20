{ pkgs, config, libs, ... }:
 {
#List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	clematis
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
	kitty
	pkgs.dunst
	libnotify
	pkgs.waybar
	plex
	pkgs.unrar
	pkgs.sway
	pkgs.linuxHeaders
	pkgs.looking-glass-client
	pkgs.virtiofsd
	pkgs.blender-hip
	pkgs.gparted
	pkgs.vmware-workstation
	pkgs.htop
	pkgs.pcsclite
	pkgs.reaper
	pkgs.xboxdrv
	pkgs.adguardhome
	pkgs.opensnitch
	pkgs.opensnitch-ui
	pkgs.home-manager
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

];
}
