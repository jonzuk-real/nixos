# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
     ./firefox/default.nix 
 ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  # TODO: Set your username
  home = {
    username = "jon";
    homeDirectory = "/home/jon";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [ 
        clematis # Discord rich presence for MPRIS music players.
#       obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files
        process-viewer # A process viewer GUI in rust
        gammastep # Screen color temperature manager
        darkman # Framework for dark-mode and light-mode transitions on Linux desktop
#       vesktop # An alternate client for Discord with Vencord built-in
        discord # All-in-one cross-platform voice and text chat for gamers
        obs-studio # Free and open source software for video recording and live streaming
        path-of-building # Offline build planner for Path of Exile
        wordbook # Offline English-English dictionary application built for GNOME
        libreoffice-qt # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
        aspell # Spell checker for many languages
        aspellDicts.en # Aspell dictionary for English
#       hunspell # Spell checker
#       hunspellDicts.en_US # Hunspell dictionary for English (United States) from Wordlist
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
        qalculate-qt # The ultimate desktop calculator
        pcsx2 # Playstation 2 emulator
        dolphin-emu # Gamecube/Wii/Triforce emulator for x86_64 and ARMv8
        jdk17 # The open-source Java Development Kit
        maestral-gui # GUI front-end for maestral (an open-source Dropbox client) for Linux
        git # Distributed version control system
        syncthing # Open Source Continuous File Synchronization
        gdrive3 # Google Drive CLI Client
#       chromium # Chromium Browser
        brave # Privacy-oriented browser for Desktop and Laptop computers

 ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
  
  # Mismatched nixpkgs and home manager versions warning remover
  home.enableNixpkgsReleaseCheck = false;
}

