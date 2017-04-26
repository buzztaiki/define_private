# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'define_private/version'

Gem::Specification.new do |spec|
  spec.name          = 'define_private'
  spec.version       = DefinePrivate::VERSION
  spec.authors       = ['Taiki Sugawara']
  spec.email         = ['buzz.taiki@gmail.com']

  spec.summary       = 'Define private method like Elixir for Ruby'
  spec.homepage      = 'https://github.com/buzztaiki/define_private'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
