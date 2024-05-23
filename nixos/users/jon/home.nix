{ config, pkgs,  ... }:
{




  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  imports = [ 
  ./firefox/default.nix 
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

 
  home.packages = [
#     pkgs.hello
#     pkgs.obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
        pkgs.process-viewer # A process viewer GUI in rust
        pkgs.gammastep # Screen color temperature manager
        pkgs.darkman # Framework for dark-mode and light-mode transitions on Linux desktop
        pkgs.obs-studio # Free and open source software for video recording and live streaming
        pkgs.path-of-building # Offline build planner for Path of Exile
        pkgs.wordbook # Offline English-English dictionary application built for GNOME
        pkgs.libreoffice-qt # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
        pkgs.aspell # Spell checker for many languages
        pkgs.aspellDicts.en # Aspell dictionary for English
#     pkgs.hunspell # Spell checker
#     pkgs.hunspellDicts.en_US # Hunspell dictionary for English (United States) from Wordlist
        pkgs.gedit # Former GNOME text editor
        pkgs.lutris # Open Source gaming platform for GNU/Linux
        pkgs.gamemode # Optimise Linux system performance on demand
        pkgs.yt-dlp # YouTube CMD Downloader
        pkgs.strawberry # Music Player
        pkgs.gamescope # SteamOS session compositing window manager
        pkgs.pavucontrol # PulseAudio Volume Control
        pkgs.librewolf # Privacy Browser
        pkgs.steam # Steam Client
        pkgs.steam-run # Run commands in the same FHS environment that is used for Steam
        pkgs.mangohud # A Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
        pkgs.yubioath-flutter # Yubico Authenticator for Desktop
#        pkgs.signal-desktop # Private, simple, and secure messenger
        pkgs.gimp # Photo Editor
        pkgs.rpcs3 # PS3 Emulator
        pkgs.qbittorrent # Featureful free software BitTorrent client
        pkgs.mpv # Media Player
        pkgs.heroic #Games Launcher
        pkgs.xarchiver # GTK frontend to 7z,zip,rar,tar,bzip2, gzip,arj, lha, rpm and deb (open and extract only)
        pkgs.airshipper # Provides automatic updates for the voxel RPG Veloren.
	pkgs.minetest # Infinite-world block sandbox game
        pkgs.prismlauncher # A free, open source launcher for Minecraft
        pkgs.mari0 # Mario and Portal Combined
        pkgs.superTux # Classic 2D jump'n run sidescroller game
        pkgs.keepassxc # Password Manager
        pkgs.lite # A lightweight text editor written in Lua
        pkgs.nox # Tools to make nix nicer to use
        pkgs.qalculate-qt # The ultimate desktop calculator
        pkgs.pcsx2 # Playstation 2 emulator
        pkgs.dolphin-emu # Gamecube/Wii/Triforce emulator for x86_64 and ARMv8
        pkgs.jdk17 # The open-source Java Development Kit
        pkgs.maestral-gui # GUI front-end for maestral (an open-source Dropbox client) for Linux
        pkgs.git # Distributed version control system
        pkgs.syncthing # Open Source Continuous File Synchronization
        pkgs.gdrive3 # Google Drive CLI Client
#     pkgs.chromium # Chromium Browser
        pkgs.brave # Privacy-oriented browser for Desktop and Laptop computers

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
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


