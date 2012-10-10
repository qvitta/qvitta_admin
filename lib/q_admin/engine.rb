require 'rails'
require 'inherited_resources'
require 'simple_form'
require 'bootstrap-sass'

module QAdmin
  class Engine < ::Rails::Engine
    isolate_namespace QAdmin
  end
end
