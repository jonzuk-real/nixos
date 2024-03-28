{ config, pkgs, ... }:
{
#VMWARE
#virtualisation.vmware.host.enable = true; 


 virtualisation.libvirtd.enable = true;
programs.virt-manager.enable = true;
}
