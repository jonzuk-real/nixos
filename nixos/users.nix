{ pkgs, config, libs, ... }:
 {

users.users.jon = {
    isNormalUser = true;
    description = "jon";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [


    ];
  };

  # Allow unfree packages
nixpkgs.config = {  
  allowUnfree = true;
};
}
