require 'rails/generators/base'

module TwigLayout
  module Generators
    class GmailGenerator < Rails::Generators::Base
    
      def self.source_root
        @_twig_layout_source_root ||= File.expand_path("../templates", __FILE__)
      end
      
      def setup_gmail
        copy_file "gmail.rb", "config/initializers/gmail.rb"
      end   
    end
  end
end