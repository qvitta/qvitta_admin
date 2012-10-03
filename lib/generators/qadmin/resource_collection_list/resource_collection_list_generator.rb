module Qadmin
  class ResourceCollectionListGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../../templates', __FILE__)

    def copy_resource_collection_partial
      copy_file "_resource_collection_list.html.erb", "app/views/admin/#{name}/_resource_collection_list.html.erb"
    end
  end
end
