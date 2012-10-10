class QAdmin::LayoutMenuGenerator < Rails::Generators::Base
  source_root File.expand_path('../../../../../app/views/layouts/q_admin', __FILE__)

  def copy_resource_collection_partial
    copy_file "_menu.html.erb", "app/views/layouts/q_admin/_menu.html.erb"
  end
end
