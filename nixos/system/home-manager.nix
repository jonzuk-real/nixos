{
    #You can uncomment these if you want, it's just similar to how Pacman works with trusted mirrors.
   #nixConfig = {
    #substituters = [
    #"https://hyprland.cachix.org"
    #"https://nix-community.cachix.org"
    #"https://cache.nixos.org"
    #];
    #trusted-public-keys = [
    #"hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    #"nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    #"cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    #];
    #};

    description = "A simple NixOS flake";
    
    inputs = {
      #nixos package source.
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      hyprland.url = "github:hyprwm/Hyprland";
          home-manager = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
        };
      };

      outputs = { self, nixpkgs, home-manager, ... }@inputs:{
        nixosConfigurations = {
            #replace "nixos" with your hostname. Hostname is "nixos" in "username@nixos" displayed in your terminal
            jon = nixpkgs.lib.nixosSystem {
              system = "x86_64-linux";
              #Not necessary at the moment, this simply makes the flake inputs interactable with the configuration. 
              specialArgs = { inherit inputs; };

              modules = [
                ./configuration.nix
                hyprland.nixosModules.default
                {programs.hyprland.enable = true;}
                home-manager.nixosModules.home-manager 
                {
                  home-manager.useGlobalPkgs = true;
                  home-manager.useUserPackages = true;
                  #replace "username" with your username.
                  home-manager.users.jon = import ./home.nix;
                }
              ];
            };
          };

      };
}
