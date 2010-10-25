class SalesforcelidsGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      # m.directory "lib"
      # m.template 'README', "README"
      m.file "definition.txt", "definition.txt"
    end
  end
end
