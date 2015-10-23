$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twig_layout/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twig_layout"
  s.version     = TwigLayout::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of twig_layout."
  s.description = "TODO: Description of twig_layout."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "sass-rails", ">= 3.2"
  s.add_development_dependency "sqlite3"
end