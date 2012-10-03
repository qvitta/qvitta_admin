module Qadmin
  class ResourceCollectionListGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('../../../../../app/views/admin/base', __FILE__)

    def copy_resource_collection_partial
      copy_file "_collection_list.html.erb", "app/views/admin/#{name}/_collection_list.html.erb"
    end
  end
end
