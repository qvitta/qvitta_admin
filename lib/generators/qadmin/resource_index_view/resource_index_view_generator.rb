class Qadmin::ResourceIndexViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app/views/admin/base', __FILE__)

  def copy_index_view_files
    say "Writing index view and partials for #{name}", :green
    copy_file 'index.html.erb', "app/views/admin/#{name}/index.html.erb"
    copy_file '_collection_list.html.erb', "app/views/admin/#{name}/_collection_list.html.erb"
    copy_file '_resource.html.erb', "app/views/admin/#{name}/_resource.html.erb"
  end
end
