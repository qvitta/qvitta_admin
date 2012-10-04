# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "qadmin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "qvitta_admin"
  s.version     = QAdmin::VERSION
  s.authors     = ["Héctor Barrientos", "Jorge Calás"]
  s.email       = ["ticaje@qvitta.net", "calas@qvitta.net"]
  s.homepage    = ""
  s.summary     = "Summary of QAdmin."
  s.description = "Description of QAdmin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "inherited_resources", '~> 1.3.1'
  s.add_dependency "simple_form", '~> 2.0.3'
  s.add_dependency "bootstrap-sass", '~> 2.1.0'
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
