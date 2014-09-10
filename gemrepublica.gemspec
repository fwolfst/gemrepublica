# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemrepublica/version'

Gem::Specification.new do |spec|
  spec.name          = "gemrepublica"
  spec.version       = GemRepublica::VERSION
  spec.authors       = ["Felix Wolfsteller"]
  spec.email         = ["felix.wolfsteller@gmail.com"]
  spec.summary       = %q{Shortcut to clone a gems code}
  spec.description   = %q{GemRepublica lets you clone a gems github repository}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'gems', "~> 0.8"
  spec.add_dependency 'git', "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
