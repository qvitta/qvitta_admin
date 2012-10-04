class QAdmin::SidebarPartialGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app/views/admin/base', __FILE__)

  def copy_index_view_files
    say "Writing sidebar partial for #{name}", :green
    copy_file '_sidebar.html.erb', "app/views/admin/#{name}/_sidebar.html.erb"
  end
end
