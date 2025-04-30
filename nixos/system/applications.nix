{ pkgs, config, libs, inputs, hyprland, ... }:

#let 
# attr = { a=2; }; 
#in if builtins.hasAttr "b" attr 
#  then attr.b 
#  else false


let
  unstable = import inputs.nixpkgs-unstable {
    system = pkgs.system;
    config = config.nixpkgs.config;
  };
in






{

#List packages installed in system profile. To search, run:
  # $ nix search wget





environment.systemPackages = with pkgs; [

#(import (fetchTarball {
#    url = "https://github.com/hyprwm/aquamarine/archive/refs/heads/main.tar.gz";
#    sha256 = "sha256:0c9z8jrjk38icrcd8sk254p0isid8r1fgmj5h76k81jrss976aqq";  # Use null for development; replace with actual hash later
#  })).packages.x86_64-linux.aquamarine
#	 aquamarine.packages.x86_64-linux.default
#	aquamarine.
#	unstable.aquamarine	
#	hyprland.hyprland
	unstable.protontricks
	unstable.winetricks
	freecad
	unityhub
	peaclock
	kdePackages.kcoreaddons
#	libsForQt5.plasma-desktop
	kdePackages.plasma-desktop
	kdePackages.kglobalaccel
	libdecor
	gtk3
	gtk4
#	  libsForQt5.full
    qt6.full
#    kde-frameworks
#    kirigami
	  adwaita-qt6
	gamescope
	mesa
#	hyprland
#	ulauncher
	efibootmgr
	cron
#	gstreamer
	dualsensectl
	os-prober
#	proton-ge-bin
	xvfb-run
	glibc
	heroic
	gvfs
	openvpn
	protonvpn-gui
	spice-vdagent	
	wezterm
	foot
	labwc-tweaks
	labwc
#	vmware-workstation
	libusb1
	gcc
	zlib
	expat
	gnumake
	virt-viewer
#	looking-glass-client
	cpuid
	async
	geoclue2
#	firefox-devedition
	wayfire
	spice-gtk
	android-tools
	usb-modeswitch
	usbutils
#	dhclient
	iptables
	#Android Internet 
	mtpfs
# 	Steam Tinker Apps
#	wtype
#	unzip 
#	wget 
#	xdotool 
#	xorg.xwininfo 
#	xxd
#	wayfire #3D wayland
	gimp
	mpvpaper
#	hyprland-autoname-workspaces # trying this out 
	#tofi
#	hyprlock
#	hyprcursor
	home-manager
	openjdk
#	xorg.xhost
	lxqt.lxqt-policykit
	waybar-mpris
	swaynotificationcenter
	xfce.thunar-archive-plugin
	xfce.thunar
	xfce.thunar-volman
	hyprshot # Screenshot tool
#	pkgs.grim # screenshot tool
	pkgs.slurp
	pkgs.wl-clipboard
	swww
	rofimoji
	rofi-vpn
#	rofi-calc
	kitty
	pkgs.dunst
	libnotify
	#waybar
	plex
	pkgs.unrar
	pkgs.sway
	pkgs.linuxHeaders
#	pkgs.looking-glass-client
	libguestfs
	pkgs.virtiofsd
	pkgs.blender-hip
	pkgs.gparted
#	virtualbox
	pkgs.htop
	pkgs.pcsclite
	pkgs.reaper
#	pkgs.xboxdrv # Xbox Controller Compat
#	pkgs.adguardhome
#	pkgs.opensnitch
#	pkgs.opensnitch-ui
	pkgs.nettools
	pkgs.linuxKernel.packages.linux_5_4.wireguard
	pkgs.networkmanager
	pkgs.wireguard-tools
	# support both 32- and 64-bit applications
       # wineWowPackages
#	winetricks
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
	mullvad-closest
	mullvad-vpn
	mullvad
	virtio-win
#	pkgs.xfce.xfce4-whiskermenu-plugin
#	pkgs.xfce.xfce4-settings	
#	gnome3.adwaita-icon-theme # default gnome cursors
#	glib 

# Wine Section

# support both 32-bit and 64-bit applications
    wineWowPackages.stable

    # support 32-bit only
    wine

    # support 64-bit only
    (wine.override { wineBuild = "wine64"; })

    # support 64-bit only
    wine64

    # wine-staging (version with experimental features)
    wineWowPackages.staging

    # winetricks (all versions)
    winetricks

    # native wayland support (unstable)
    wineWowPackages.waylandFull

];
}


