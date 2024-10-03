{ config, pkgs, lib, ... }:
{

nixpkgs.overlays = [
  (self: super: {
    qemu = super.qemu.overrideAttrs (oldAttrs: {
      postPatch = ''
        sed -i 's/GUI_REFRESH_INTERVAL_DEFAULT 30/GUI_REFRESH_INTERVAL_DEFAULT 16/g' include/ui/console.h
      '';
    });
  })
];
}
