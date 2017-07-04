require "spec_helper"
require "tempfile"

describe XfSdk do
  it "has a version number" do
    expect(XfSdk::VERSION).not_to be nil
  end

  it "0 success" do
    expect(XfSdk.success?(0)).to eq(true)
  end

  it "-1 failed" do
    expect(XfSdk.success?(-1)).to eq(false)
  end

  it "generates wav file success" do
    file = Tempfile.new
    begin
      result = XfSdk.tts("hello world", file.path)
      expect(XfSdk.success?(result)).to eq(true)      
    ensure
      file.close(true)
    end
  end
end
