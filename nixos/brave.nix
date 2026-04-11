{ config, pkgs, lib, ... }:

let
  brave-nightly = pkgs.brave.overrideAttrs (oldAttrs: rec {
    pname = "brave-nightly";
    version = "latest"; # You might want to pin this to a specific version

    src = pkgs.fetchurl {
      url = "https://github.com/brave/brave-browser/releases/download/v1.72.45/brave-browser-nightly_1.72.45_amd64.deb";
      sha256 = "a2c4db4d46b91d80cc8651c2c386004fa6aea28497476ea9b26e6249af8fec58";
     # You'll need to provide the correct SHA256 hash
    };

    installPhase = ''
      mkdir -p $out
      ar x $src
      tar xvf data.tar.xz
      mv usr/* $out/
    '';
  });
in
{
  # Your other configurations...

  environment.systemPackages = with pkgs; [
    brave-nightly
  ];

  # Your other configurations...
}
