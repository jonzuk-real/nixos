{
  description = "A simple NixOS flake";

	


  outputs = inputs@{ nixpkgs, home-manager, nixpkgs-unstable, nur, ... }: {
   
    nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
      pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
	specialArgs = {inherit inputs;};      
modules = [ 
        ./configuration.nix
        ./hardware-configuration.nix
	./users.nix
	./chromium.nix
	./hyprland.nix
	./hardware/amdgpu.nix
	./system/applications.nix
  	./system/services.nix
  	./system/pipewire.nix
 	#./hardware/nvidia.nix
# make home-manager as a module of nixos
# so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.jon = import ./users/jon/home.nix; 
	    home-manager.extraSpecialArgs = {inherit inputs;};
	}
     ];
      
       };
         };
         };
inputs = {
  
   nixpkgs = {
    url = "github:NixOS/nixpkgs/nixos-23.11";
		     };	

  nixpkgs-unstable = {
    url = "github:NixOS/nixpkgs/nixos-unstable";
				   };	
 
  home-manager = {   
    url = "github:nix-community/home-manager/release-23.11";
    inputs.nixpkgs.follows = "nixpkgs";   
				};    
 
  nur = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
	    };
		};



 
		

     
 


}

