{
 description = "My Epic NixOS flake";



  outputs = inputs@{ nixpkgs, home-manager, nixpkgs-unstable, nur, hyprland, aquamarine,... }: {
   
    nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
      pkgs = import nixpkgs { system = "x86_64-linux"; nixpkgs.config.allowUnfree = true; config.allowUnfree = true; };
	specialArgs = {inherit inputs;};      
modules = [ 
#	./chaotic.nix
#	./winetricks.nix
#	./wger.nix
        ./configuration.nix
        ./hardware-configuration.nix
	./users.nix
	./chromium.nix
	./steam.nix
#	./hyprland.nix
	./hardware/amdgpu.nix
	./system/applications.nix
  	./system/services.nix
#	./hyprflake.nix
  	./system/pipewire.nix
#	./system/kodi.nix
	./system/network.nix
#	./system/lookingglass.nix
#	./jellyfin.nix
#	./60QEMU.nix
	./plex.nix
#	./brave.nix
#	./hardware/nvidia.nix
#	./modules/invidious.nix
	./modules/ollama.nix
#	./modules/vfio.nix

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
#      programs.hyprland.enable = true;
 #       programs.hyprland.package = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
# environment.systemPackages = [
#            aquamarine.defaultPackage.x86_64-linux
#          ];
#nixpkgs.config.allowUnfree = true; 
 
       };
         };
         };
inputs = {
  nixtheplanet.url =  "github:matthewcroughan/nixtheplanet";
#  aquamarine.url = "github:hyprwm/aquamarine";			
  hyprland.url =  "git+https://github.com/hyprwm/Hyprland";
  aquamarine.url = "github:hyprwm/aquamarine/";
#   aquamarine.ref = "v0.7.0";
					
  nixpkgs-unstable = 
{    url = "github:NixOS/nixpkgs/nixos-unstable";
};		     	
  nixpkgs = 
{    url = "github:NixOS/nixpkgs/nixos-24.11";
};				   	
  home-manager =    
{    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";   			
};
  nur = 
{      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
};				    
	};



 
		

     
 


}
