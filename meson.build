project(
  'libedgetpu',
  'cpp',
  version : '1.0.0',
  default_options : ['cpp_std=c++11']
)
add_project_arguments(
  [
    '-Wno-sign-compare',
    '-Wno-return-type',
    '-flto',
  ],
  language : 'cpp'
)

cxx = meson.get_compiler('cpp')

absl_strings = dependency('absl_strings')
threads = dependency('threads')
absl_synchronization = dependency('absl_synchronization')
absl_time = dependency('absl_time')
absl_flags = dependency('absl_flags')
absl_flags_parse = dependency('absl_flags_parse')
absl_flat_hash_map = dependency('absl_flat_hash_map')
absl_optional = dependency('absl_optional')
libusb = dependency('libusb-1.0')
flatbuffers = dependency('flatbuffers')
tensorflow_lite = cxx.find_library('tensorflow-lite')

bash = find_program('bash')
flatc = find_program('flatc')

subdir('port')
subdir('executable')
subdir('api')
subdir('driver_shared')
subdir('driver')
subdir('tflite')
