$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails-smash/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails-smash"
  s.version     = RailsSmash::VERSION
  s.authors     = ["Danny Hadley"]
  s.email       = ["danny@goinvo.com"]
  s.homepage    = "http://goinvo.com"
  s.summary     = ""
  s.description = ""

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
