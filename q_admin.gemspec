# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require 'q_admin/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "q_admin"
  s.version     = QAdmin::VERSION
  s.authors     = ["Héctor Barrientos", "Jorge Calás"]
  s.email       = ["ticaje@qvitta.net", "calas@qvitta.net"]
  s.homepage    = "https://github.com/qvitta/qvitta_admin"
  s.summary     = "Summary of QAdmin."
  s.description = "Description of QAdmin."

  s.files         = `git ls-files`.split($/)

  s.executables   = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "inherited_resources", '~> 1.3.1'
  s.add_dependency "simple_form", '~> 2.0.3'
  s.add_dependency "bootstrap-sass", '~> 2.1.0'
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
