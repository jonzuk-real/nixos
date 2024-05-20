let
 # RX 6800
  gpuIDs = [
    "1002:73bf" # Graphics
    "1002:ab28" # Audio
  ];
in { pkgs, lib, config, ... }: {
  options.vfio.enable = with lib;
    mkEnableOption "Configure the machine for VFIO";

  config = let cfg = config.vfio;
  in {
    boot = {
      initrd.kernelModules = [
        "vfio_pci"
      #  "vfio"
     #   "vfio_iommu_type1"
    #    "vfio_virqfd"
	"kvm-amd"
      ];

      kernelParams = [
        # enable IOMMU
        "amd_iommu=on" "pcie_aspm=off" "iommu=pt"
      ] ++ lib.optional cfg.enable
        # isolate the GPU
        ("vfio-pci.ids=" + lib.concatStringsSep "," gpuIDs);
    };

    hardware.opengl.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;

	 # Add binaries to path so that hooks can use it
  systemd.services.libvirtd = {
    path = let
             env = pkgs.buildEnv {
               name = "qemu-hook-env";
               paths = with pkgs; [
                 bash
                 libvirt
                 kmod
                 systemd
                 ripgrep
                 sd
               ];
             };
           in
           [ env ];

    preStart =
    ''
      mkdir -p /var/lib/libvirt/hooks
      mkdir -p /var/lib/libvirt/hooks/qemu.d/win10/prepare/begin
      mkdir -p /var/lib/libvirt/hooks/qemu.d/win10/release/end
      mkdir -p /var/lib/libvirt/vgabios
      
      ln -sf /home/owner/Desktop/Sync/Files/Linux_Config/symlinks/qemu /var/lib/libvirt/hooks/qemu
      ln -sf /home/owner/Desktop/Sync/Files/Linux_Config/symlinks/kvm.conf /var/lib/libvirt/hooks/kvm.conf
      ln -sf /home/owner/Desktop/Sync/Files/Linux_Config/symlinks/start.sh /var/lib/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh
      ln -sf /home/owner/Desktop/Sync/Files/Linux_Config/symlinks/stop.sh /var/lib/libvirt/hooks/qemu.d/win10/release/end/stop.sh
      ln -sf /home/owner/Desktop/Sync/Files/Linux_Config/symlinks/patched.rom /var/lib/libvirt/vgabios/patched.rom
      
      chmod +x /var/lib/libvirt/hooks/qemu
      chmod +x /var/lib/libvirt/hooks/kvm.conf
      chmod +x /var/lib/libvirt/hooks/qemu.d/win10/prepare/begin/start.sh
      chmod +x /var/lib/libvirt/hooks/qemu.d/win10/release/end/stop.sh
    '';
  };
		# Enable xrdp
  services.xrdp.enable = true; # use remote_logout and remote_unlock
  services.xrdp.defaultWindowManager = "i3";
  systemd.services.pcscd.enable = false;
  systemd.sockets.pcscd.enable = false;
  };
}
