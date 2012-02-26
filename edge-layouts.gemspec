$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "edge-layouts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edge-layouts"
  s.version     = EdgeLayouts::VERSION
  s.authors     = ["Dan Persa"]
  s.email       = ["dan.persa@gmail.com"]
  s.homepage    = "https://github.com/danpersa/edge-layouts"
  s.summary     = "EdgeLayouts is a layout engine for faster starting up applications"
  s.description = "EdgeLayouts is a layout engine for faster starting up applications"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.1"

end
