{
  description = "A simple NixOS flake";


	

  inputs = {
    # NixOS official package source, using the nixos-23.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
      home-manager.url = "github:nix-community/home-manager/release-23.11";
  home-manager.inputs.nixpkgs.follows = "nixpkgs";
   firefox-addons = { url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";}; 
 };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
         # make home-manager as a module of nixos
          # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.jon = import ./home.nix; 

		
	}
      ];
    };
  };
}
