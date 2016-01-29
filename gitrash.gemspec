# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'gitrash/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.authors = ['Sadzid Suljic','Haris Krajina']
  spec.description = %q{Gitrash gem is utility tool for cleaning up old remote branches.}
  spec.email = 'haris.krajina@gmail.com'
  spec.files = %w(README.md Gemfile gitrash.gemspec)
  spec.files += Dir.glob("bin/**/*")
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.homepage = 'https://github.com/hkraji/gitrash'
  spec.licenses = ['MIT']
  spec.name = 'gitrash'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = spec.description
  spec.test_files = Dir.glob("spec/**/*")
  spec.version = Gitrash::VERSION

  spec.add_dependency 'colorize', '>= 0.7.7'
  spec.add_dependency 'thor', '>= 0.9.1'
  spec.add_dependency 'git', '>= 1.2.9'
end