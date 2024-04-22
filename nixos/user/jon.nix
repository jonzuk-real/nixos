{ pkgs, config, libs, ... }:
 {

users.users.jon = {
    isNormalUser = true;
    description = "jon";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
#	obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
	process-viewer # A process viewer GUI in rust
	gammastep # Screen color temperature manager
	darkman # Framework for dark-mode and light-mode transitions on Linux desktop
	discord # All-in-one cross-platform voice and text chat for gamers
	obs-studio # Free and open source software for video recording and live streaming
	path-of-building # Offline build planner for Path of Exile
	wordbook # Offline English-English dictionary application built for GNOME
	libreoffice-qt # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
	aspell # Spell checker for many languages
	aspellDicts.en # Aspell dictionary for English
#	hunspell # Spell checker
#	hunspellDicts.en_US # Hunspell dictionary for English (United States) from Wordlist
	gedit # Former GNOME text editor
	lutris # Open Source gaming platform for GNU/Linux
	gamemode # Optimise Linux system performance on demand
	yt-dlp # YouTube CMD Downloader
	strawberry # Music Player
	gamescope # SteamOS session compositing window manager
	pavucontrol # PulseAudio Volume Control
	librewolf # Privacy Browser
	steam # Steam Client
	steam-run # Run commands in the same FHS environment that is used for Steam
	mangohud # A Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
	yubioath-flutter # Yubico Authenticator for Desktop
	signal-desktop # Private, simple, and secure messenger
	gimp # Photo Editor
	rpcs3 # PS3 Emulator
	qbittorrent # Featureful free software BitTorrent client
	mpv # Media Player
	heroic #Games Launcher
	xarchiver # GTK frontend to 7z,zip,rar,tar,bzip2, gzip,arj, lha, rpm and deb (open and extract only)
	airshipper # Provides automatic updates for the voxel RPG Veloren.
	minetest # Infinite-world block sandbox game
	prismlauncher # A free, open source launcher for Minecraft
	mari0 # Mario and Portal Combined
	superTux # Classic 2D jump'n run sidescroller game
	keepassxc # Password Manager
	lite # A lightweight text editor written in Lua
	nox # Tools to make nix nicer to use
	openjdk # Java
	qalculate-qt # The ultimate desktop calculator
	pcsx2 # Playstation 2 emulator
	dolphin-emu # Gamecube/Wii/Triforce emulator for x86_64 and ARMv8
	jdk17 # The open-source Java Development Kit
	maestral-gui # GUI front-end for maestral (an open-source Dropbox client) for Linux
	git # Distributed version control system
        syncthing # Open Source Continuous File Synchronization
	gdrive3 # Google Drive CLI Client
#	chromium # Chromium Browser
	brave # Privacy-oriented browser for Desktop and Laptop computers
    ];
  };

  # Allow unfree packages
nixpkgs.config = {  
  allowUnfree = true;
};
}
