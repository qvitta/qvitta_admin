#!/usr/bin/env rake

begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

begin
  require 'yard'

  YARD::Rake::YardocTask.new(:doc) do |t|
    t.files.push('README.md')
    t.files.push('lib/**/*.rb')
    t.files.push('app/**/*.rb')
    t.options = ['--private', '--protected'] # optional
  end

rescue LoadError

  begin
    require 'rdoc/task'
  rescue LoadError
    require 'rdoc/rdoc'
    require 'rake/rdoctask'
    RDoc::Task = Rake::RDocTask
  end

  RDoc::Task.new(:doc) do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.title    = 'QAdmin'
    rdoc.options << '--line-numbers'
    # rdoc.rdoc_files.include('README.rdoc')
    rdoc.rdoc_files.include('README.markdown')
    rdoc.rdoc_files.include('lib/**/*.rb')
    rdoc.rdoc_files.include('app/**/*.rb')
  end
end

Bundler::GemHelper.install_tasks

