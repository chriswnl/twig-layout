require 'rails/generators/base'

module TwigLayout
  module Generators
    #module Activerecord

    class CachingGenerator < Rails::Generators::Base
      def add_active_record_store
        gem "activerecord-session_store"
        
        Bundler.with_clean_env do
          run "bundle install"
        end
      end    
      def comment_out_sessions_store
        comment_lines 'config/initializers/session_store.rb', /cookie_store/
        comment_lines 'config/initializers/session_store.rb', /redis_store/
      
        append_to_file "config/initializers/session_store.rb" do
          "Rails.application.config.session_store :active_record_store\n"
        end
        
      end

      
    end
    
    #end
  end
end