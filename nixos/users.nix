{ pkgs, config, libs, ... }:
 {

users.users.jon = {
    isNormalUser = true;
    description = "jon";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
   };

  # Allow unfree packages
nixpkgs.config = {  
  allowUnfree = true;
};
}
