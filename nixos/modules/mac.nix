{ pkgs, ... }:

{
  inputs = {
    nixtheplanet.url = "github:matthewcroughan/nixtheplanet";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
  };
  outputs = { self, nixpkgs, nixtheplanet }: {
    nixosConfigurations.my-machine = nixpkgs.lib.nixosSystem {
      modules = [
        nixtheplanet.nixosModules.macos-ventura
        {
          services.macos-ventura = {
            enable = true;
            openFirewall = true;
            vncListenAddr = "0.0.0.0";
          };
        }
      ];
    };
  };
}
