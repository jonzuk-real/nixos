# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" "virtio" "virtio_pci" "virtio_gpu" ];
  boot.extraModulePackages = [  ];
 

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/d2387be6-ad38-4e78-8a4b-879c933b6952";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/BC13-EE69";
      fsType = "vfat";
    };

  fileSystems."/run/media/jon/SSD" =
    { device = "/dev/disk/by-uuid/c239575d-bf5a-4591-b471-67d96650742a";
      fsType = "ext4";
    };

#  fileSystems."/boot" =
#    { device = "/dev/disk/by-uuid/BC13-EE69";
#      fsType = "vfat";
#    };



  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp7s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
