require "mkmf"
require "os"

lib_path = []
if OS.bits == 64
  lib_path << File.expand_path("lib/x64", __dir__)
else
  lib_path << File.expand_path("lib/x86", __dir__)
end

have_library("msc", "QTTSAudioGet") or raise "Library msc not found."
have_library("dl") or raise "Library dl not found."
have_library("pthread") or raise "Library pthread not found."

dir_config("xf_sdk", [], lib_path)

create_makefile("xf_sdk/xf_sdk")
