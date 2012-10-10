class QAdmin::ResourceShowViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app/views/admin/base', __FILE__)

  def copy_resource_collection_partial
    copy_file "show.html.erb", "app/views/admin/#{name}/show.html.erb"
  end
end
