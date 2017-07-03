# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xf_sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "xf_sdk"
  spec.version       = XfSdk::VERSION
  spec.authors       = ["Mingxiang Xue"]
  spec.email         = ["mingxiangxue@gmail.com"]

  spec.summary       = %q{科大讯飞(xfyun) ruby sdk.}
  spec.description   = %q{科大讯飞(xfyun) ruby sdk.}
  spec.homepage      = "https://github.com/UzxMx/xf_sdk"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/xf_sdk/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "os"
end
