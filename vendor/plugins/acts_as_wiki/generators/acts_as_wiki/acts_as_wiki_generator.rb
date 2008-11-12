class ActsAsWikiGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      # Migration
      unless options[:skip_migration]
        m.migration_template(
          'migration.rb', 'db/migrate', :migration_file_name => 'create_revisions'
        )
      end

      # Controller
      m.file "controllers/revisions_controller.rb", "app/controllers/revisions_controller.rb" 

      # Helpers
      m.file "helpers/revisions_helper.rb", "app/helpers/revisions_helper.rb"

      # Models
      m.file "models/revision.rb", "app/models/revision.rb"

      # Views. 
      m.directory "app/views/revisions"
      m.file "views/revisions/history.rhtml", "app/views/revisions/history.rhtml"
      m.file "views/revisions/show.rhtml", "app/views/revisions/show.rhtml"
      m.file "views/revisions/diff.rhtml", "app/views/revisions/diff.rhtml"

      # Stylesheets
      m.file "stylesheets/revision.css", "public/stylesheets/revisions.css"
      
      m.readme "INSTALL"
    end
  end

  def file_name
    "create_revisions"
  end

end

