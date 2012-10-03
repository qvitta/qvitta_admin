class Qadmin::ResourceViewsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../../../../../app/views/admin', __FILE__)

  def copy_view_files
    directory "base", "app/views/admin/#{name}/"
  end
end
