{ pkgs, config, libs, ... }:
 {

users.users.jon = {
    isNormalUser = true;
    description = "jon";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
	lutris
	gamemode
	yt-dlp # YouTube CMD Downloader
	strawberry # Music Player
	gamescope
	pavucontrol	
	librewolf # Privacy Browser
	steam # Steam Client
	steam-run
	mangohud
	yubioath-flutter
	signal-desktop
	gimp # Photo Editor
	rpcs3 # PS3 Emulator
	qbittorrent
	mpv # Media Player
	heroic # Games Launcher
	xarchiver
	airshipper
	minetest
	prismlauncher
	mari0 # Mario and Portal Combined
	superTux
	keepassxc # Password Manager
	xfce.mousepad
	nox
	openjdk
	qalculate-qt
	pcsx2
	dolphin-emu
	jdk17
	dolphin-emu
	maestral-gui
	git
        syncthing
	gdrive3
	chromium # Chromium Browser

    ];
  };

  # Allow unfree packages
nixpkgs.config = {  
  allowUnfree = true;
};
}
