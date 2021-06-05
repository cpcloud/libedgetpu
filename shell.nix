let
  pkgs = import ./nix;
in
pkgs.mkShell {
  name = "libedgetpu";
  buildInputs = with pkgs; [
    abseil-cpp
    cmake
    flatbuffers
    libusb
    meson
    ninja
    niv
    pkg-config
    tensorflow-lite
    xxd
  ];

  NIX_CFLAGS_COMPILE = "-fuse-ld=gold";
}
