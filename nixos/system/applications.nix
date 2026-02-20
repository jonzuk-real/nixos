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


	hyprshade
	unstable.protontricks
	unstable.winetricks
	freecad
	unityhub
	peaclock
	libdecor
	gtk3
	gtk4
	qt6.full
        adwaita-qt6
	gamescope
	mesa
	efibootmgr
	cron
	dualsensectl
	os-prober
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
	libusb1
	gcc
	zlib
	expat
	gnumake
	virt-viewer
	cpuid
	async
	geoclue2
	wayfire
	spice-gtk
	android-studio-tools
	android-tools
	usb-modeswitch
	usbutils
	iptables 
	mtpfs
	gimp
	mpvpaper
	home-manager
	openjdk
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
	kitty
	pkgs.dunst
	libnotify
	plex
	pkgs.unrar
	pkgs.sway
	pkgs.linuxHeaders
	libguestfs
	pkgs.virtiofsd
	pkgs.blender-hip
	pkgs.gparted
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


