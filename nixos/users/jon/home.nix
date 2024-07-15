{ config, pkgs, inputs,  ... }:



let

  stable = import inputs.nixpkgs-stable {
    system = pkgs.system;
  };

in



{




  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  imports = [ 
  ./firefox/default.nix 
  ./system/kodi.nix
  ];

  home.username = "jon";
  home.homeDirectory = "/home/jon";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.

 

  home.packages = with pkgs; [ 
#	workout-tracker
	stable.audacious
	gqview
	wofi
	stable.rofi-wayland 
	wootility # A customization and management software for Wooting keyboards
        mealie # A self hosted recipe manager and meal planner
	steamtinkerlaunch # Steam Tinker
#      	 obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
        process-viewer # A process viewer GUI in rust
        gammastep # Screen color temperature manager
        darkman # Framework for dark-mode and light-mode transitions on Linux desktop
        obs-studio # Free and open source software for video recording and live streaming
        path-of-building # Offline build planner for Path of Exile
        wordbook # Offline English-English dictionary application built for GNOME
        libreoffice-qt # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
        aspell # Spell checker for many languages
        aspellDicts.en # Aspell dictionary for English
# 	 hunspell # Spell checker
#        hunspellDicts.en_US # Hunspell dictionary for English (United States) from Wordlist
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
        steamPackages.steam-runtime # The official runtime used by Steam
	mangohud # A Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
        stable.yubioath-flutter # Yubico Authenticator for Desktop
#        gimp # Photo Editor
	ppsspp # A HLE Playstation Portable emulator, written in C++ (SDL + headless)
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
        qalculate-qt # The ultimate desktop calculator
        pcsx2 # Playstation 2 emulator
        dolphin-emu # Gamecube/Wii/Triforce emulator for x86_64 and ARMv8
        jdk17 # The open-source Java Development Kit
        maestral-gui # GUI front-end for maestral (an open-source Dropbox client) for Linux
        git # Distributed version control system
        syncthing # Open Source Continuous File Synchronization
        gdrive3 # Google Drive CLI Client
#        chromium # Chromium Browser
        brave # Privacy-oriented browser for Desktop and Laptop computers

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
 
  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/jon/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
    
    
  
  
}


