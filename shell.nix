let
  sources = import ./nix;
  pkgs = sources.nixpkgs;
in
pkgs.mkShell {
  name = "libedgetpu";
  buildInputs = with pkgs; [
    niv
    meson
    pkg-config
    ninja
    cmake
    abseil-cpp
    flatbuffers
    libusb
    tensorflow-lite
    xxd
  ];
}
