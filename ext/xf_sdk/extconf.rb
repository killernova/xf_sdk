require "mkmf"
require "os"

libs_path = []

lib_path = if OS.bits == 64
  File.expand_path("lib/x64", __dir__)
else
  File.expand_path("lib/x86", __dir__)
end

if RbConfig::CONFIG["RPATHFLAG"].to_s.empty?
  $LDFLAGS << " -Wl,-rpath,#{lib_path}"
end

libs_path << lib_path

dir_config("xf_sdk", [], libs_path)

have_library("dl") or raise "Library dl not found."
have_library("pthread") or raise "Library pthread not found."

create_makefile("xf_sdk/xf_sdk")