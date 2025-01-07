{ config, pkgs, ... }:

{
  # ... other configurations ...

  environment.systemPackages = with pkgs; [
    wine
    (pkgs.writeShellScriptBin "winetricks" ''
      #!/bin/sh
      exec ${pkgs.curl}/bin/curl -L https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks | sh -s "$@"
    '')
  ];

  # Optionally, add bash completion for winetricks
  environment.etc."bash_completion.d/winetricks".source = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks.bash-completion";
    sha256 = null; # Update this hash as needed
  };
}
