class DemoGenerator < Rails::Generators::Base
    desc "demo generator for practice"
    
    def create_root_file
        puts "First generator"
        puts "It will create a root file"
        create_file "app/controllers/homes_controller.rb", "class HomesController < ActionController::Base
        def root_file
        end
end
    "
        create_file "app/views/homes/root_file.html.erb", "This file created using generator"
        #append_to_file "config/routes.rb", "root 'root_file'", before: /^end/
        inject_into_file "config/routes.rb", "root 'homes#root_file'\n", :before => /^end/
    end
end