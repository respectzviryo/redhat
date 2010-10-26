class SconnectGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      m.file "main.css", "public/stylesheets/main.css"
      m.file "salesforce.css", "public/stylesheets/salesforce.css"
      m.file "salesforce_constants.rb", "lib/salesforce_constants.rb"
      m.directory "db/migrate/"
      m.file "20101022141046_add_refresh_token_to_users.rb", "db/migrate/20101022141046_add_refresh_token_to_users.rb"

      add_to_environment "gem 'soap4r'"
      add_to_environment "require 'ssl_requirement'"
    end

  end

  def add_to_environment text
    path = destination_path('config/environment.rb')
    content = File.read(path)
    unless content.match text
      File.open(path, 'wb') { |file| file.write(content + "\n" +text) }
    end
  end

end