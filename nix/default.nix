let
  sources = import ./sources.nix;
in
sources // {
  nixpkgs = import sources.nixpkgs {
    overlays = [
      (import ./abseil-cpp.nix)
    ];
  };
}
