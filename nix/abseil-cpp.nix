self: super: {
  abseil-cpp = super.abseil-cpp.overrideAttrs (old: {
    cmakeFlags = [ "-DCMAKE_CXX_STANDARD=11" ];
  });
}
