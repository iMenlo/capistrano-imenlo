# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'capistrano/imenlo/version'

Gem::Specification.new do |s|
  s.name         = "capistrano-imenlo"
  s.version      = Capistrano::iMenlo::VERSION
  s.authors      = ["Bruno Michel", "Sylvain Gautier"]
  s.email        = "bruno.michel@af83.com"
  s.homepage     = "https://github.com/imenlo/capistrano-imenlo"
  s.summary      = "Capistrano recipes for iMenlo"
  s.description  = "Capistrano recipes for iMenlo"

  s.files        = `git ls-files README.md LICENSE lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  s.add_dependency "capistrano", "~>2.9"
  s.add_dependency "capistrano_colors", "~>0.5"
  s.add_dependency "capistrano-notification", "~>0.1"
  s.add_dependency "sushi", "~>0.0.2"
end
