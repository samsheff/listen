# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'listen/version'

Gem::Specification.new do |s|
  s.name        = 'listen'
  s.version     = Listen::VERSION
  s.license     = 'MIT'
  s.author      = 'Thibaud Guillaume-Gentil'
  s.email       = 'thibaud@thibaud.gg'
  s.homepage    = 'https://github.com/guard/listen'
  s.summary     = 'Listen to file modifications'
  s.description = 'The Listen gem listens to file modifications and '\
    'notifies you about the changes. Works everywhere!'

  s.files        = `git ls-files -z`.split("\x0").select do |f|
    /^(?:bin|lib)\// =~ f
  end + %w(CHANGELOG.md CONTRIBUTING.md LICENSE.txt README.md)

  s.test_files   = []
  s.executable   = 'listen'
  s.require_path = 'lib'

  s.required_ruby_version = '>= 1.9.3'

  # NOTE: different minor versions are API-incompatible,
  # so we stick to the latest stable+maintained version
  s.add_dependency 'celluloid',  '~> 0.16.0'

  s.add_dependency 'rb-fsevent', '>= 0.9.3'
  s.add_dependency 'rb-inotify', '>= 0.9'

  s.add_development_dependency 'bundler', '>= 1.3.5'
end
