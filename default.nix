let
  sources = import ./nix;
  pkgs = sources.nixpkgs;
in
pkgs.callPackage ./libedgetpu.nix { }
