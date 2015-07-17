# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'choc_mool/version'

Gem::Specification.new do |spec|
  spec.name          = 'choc_mool'
  spec.version       = ChocMool::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Mark G']
  spec.email         = ['rtec88@gmail.com']
  spec.description   = 'Deep dive hash accessor'
  spec.summary       = spec.description
  spec.homepage      = 'http://github.com/attack/choc_mool'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 1.9.2'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 2.11'
  spec.add_development_dependency 'pry'
end
