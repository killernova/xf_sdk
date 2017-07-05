module XfSdk
  module TTS
    class << self
      attr_accessor :voice_name, :sample_rate, :speed

      def voice_name
        @voice_name || "xiaoyan"
      end

      def sample_rate
        @sample_rate || 16000
      end

      def speed
        @speed || 50
      end

      def convert(text, dest_path, options = {})
        options = {
          voice_name: options[:voice_name] || self.voice_name,
          sample_rate: options[:sample_rate] || self.sample_rate,
          speed: options[:speed] || self.speed
        }
        params = "voice_name = #{options[:voice_name]}, text_encoding = utf8, sample_rate = #{options[:sample_rate]}, speed = #{options[:speed]}, volume = 50, pitch = 50, rdn = 2"
        Internal.tts(text, dest_path, params)
      end
    end
  end
end