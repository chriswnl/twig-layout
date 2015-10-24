require 'rails/generators/base'

module TwigLayout
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def self.source_root
        @_twig_layout_source_root ||= File.expand_path("../../../../app/", __FILE__)
      end
      def create_template_files
        puts "Copying Twig template"
        
        copy_file "views/layouts/twig2.html.erb", "app/views/layouts/twig.html.erb"
      end

      def create_stylesheet_files
        copy_file "assets/stylesheets/twig.scss", "app/assets/stylesheets/application.scss"
        copy_file "assets/stylesheets/variables.scss.example", "app/assets/stylesheets/variables.scss"
        copy_file "assets/stylesheets/mixins.scss.example", "app/assets/stylesheets/mixins.scss"
      end
      
      def create_js_files
        copy_file "assets/javascripts/twig.js.example", "app/assets/javascripts/application.js"
      end
      
      def copy_image_files
        copy_file "assets/images/twiglogo.png", "app/assets/images/twiglogo.png"
      end
    end
  end
end
