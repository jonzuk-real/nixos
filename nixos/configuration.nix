 # Edit this configuration file to define what should be installed on
 # your system.  Help is available in the configuration.nix(5) man page
 # and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
#./system/home-manager.nix
./hyprland.nix
./hardware-configuration.nix
./hardware/amdgpu.nix
#./hardware/nvidia.nix
#./hardware/X11.nix
 ./user/jon.nix
 ./user/firefox.nix
 ./user/chromium.nix
  ./system/applications.nix
  ./system/services.nix
  ./system/pipewire.nix
  ./system/searx.nix
   ./virtualization.nix
  ./vfio.nix
 ./unstable.nix
 ];

services.flatpak.enable = true;
nixpkgs.config.allowUnfree = true;





#Steam
programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
};
environment.systemPackages = [
#WayBar
(pkgs.waybar.overrideAttrs (oldAttrs: {
    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
  })
)
];


  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

system.autoUpgrade = {
  enable = true;
   flags = [
    "--update-input"
    "nixpkgs"
    "-L" # print build logs
  ];
  dates = "02:00";
  randomizedDelaySec = "45min";
};

#Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

#Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [64738];
  # networking.firewall.allowedUDPPorts = [64738];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).




    # Use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    # media-session.enable = true;
  system.stateVersion = "23.11"; # Did you read the comment?
  }
