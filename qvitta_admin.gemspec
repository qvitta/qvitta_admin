# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "qadmin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "qvitta_admin"
  s.version     = Qadmin::VERSION
  s.authors     = ["Héctor Barrientos", "Jorge Calás"]
  s.email       = ["ticaje@qvitta.net", "calas@qvitta.net"]
  s.homepage    = ""
  s.summary     = "Summary of Qadmin."
  s.description = "Description of Qadmin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "inherited_resources"
  s.add_dependency "simple_form"
  s.add_dependency "bootstrap-sass"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
