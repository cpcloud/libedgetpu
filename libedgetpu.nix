{ abseil-cpp
, cmake
, flatbuffers
, libusb
, meson
, ninja
, pkg-config
, python3
, stdenv
, tensorflow-lite
, withPci ? true
, withUsb ? true
, xxd
}:
stdenv.mkDerivation {
  pname = "libedgetpu";
  version = "1.0.0";
  nativeBuildInputs = [
    meson
    pkg-config
    cmake
    ninja
    python3
  ];
  mesonFlags = [
    "--buildtype=release"
    "-Dpci=${if withPci then "enabled" else "disabled"}"
    "-Dusb=${if withUsb then "enabled" else "disabled"}"
  ];
  buildInputs = [
    abseil-cpp
    flatbuffers
    libusb
    tensorflow-lite
    xxd
  ];

  src = ./.;
}
