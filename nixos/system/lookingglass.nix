{ pkgs, config, libs, ... }:

{



    boot.extraModulePackages = [ config.boot.kernelPackages.kvmfr ];
    boot.kernelModules = [ "kvmfr" ];
    boot.extraModprobeConfig = ''
        options kvmfr static_size_mb=32
    '';

    services.udev.extraRules = ''
    SUBSYSTEM=="kvmfr", OWNER="jon", GROUP="kvm", MODE="0660"
'';

    virtualisation.libvirtd.qemu.verbatimConfig = ''
    cgroup_device_acl = [
        "/dev/null", "/dev/full", "/dev/zero",
        "/dev/random", "/dev/urandom",
        "/dev/ptmx", "/dev/kvm",
        "/dev/kvmfr0"
    ]
'';




}
