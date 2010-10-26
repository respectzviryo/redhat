class SconnectGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      m.file "main.css", "public/stylesheets/main.css"
      m.file "salesforce.css", "public/stylesheets/salesforce.css"
      m.file "salesforce_constants.rb", "lib/salesforce_constants.rb"
      m.file "20101022141046_add_refresh_token_to_users.rb", "db/migrate/20101022141046_add_refresh_token_to_users.rb"

      path = destination_path('config/environment.rb')
      content = File.read(path)
      req_gem = "gem 'soap4r'"
      unless content.match req_gem
        File.open(path, 'wb') { |file| file.write(content + "\n" +req_gem) }
      end
      
    end


  end

end