require 'rails/generators/base'

module TwigLayout
  module Generators
    class SsoGenerator < Rails::Generators::Base
      def self.source_root
        @_twig_layout_source_root ||= File.expand_path("../templates", __FILE__)
      end
      def create_template_files
        puts "Copying SSO config to devise setup"
        
        copy_file "devise_cas_auth.rb", "config/initializers/devise_cas_auth.rb"
      end
      
      def still_to_do
        puts "For single sign out (if it ever works) we have to use redis or activerecord store."
      end
    end

    
  end
end