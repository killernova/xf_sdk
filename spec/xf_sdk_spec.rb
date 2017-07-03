require "spec_helper"

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

  it "generates hello_world.wav success" do
    result = XfSdk.tts("hello world", "hello_world.wav")
    expect(XfSdk.success?(result)).to eq(true)
  end
end
