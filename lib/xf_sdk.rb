require "xf_sdk/version"
require "xf_sdk/xf_sdk"
require "xf_sdk/tts"

module XfSdk
  class << self
    def success?(code)
      Internal.success?(code)
    end
  end
end
