$:.push File.expand_path("../lib", __FILE__)

require "rails-smash/version"

Gem::Specification.new do |s|

  s.name        = "rails-smash"
  s.version     = RailsSmash::VERSION
  s.authors     = ["Danny Hadley"]
  s.email       = ["danny@goinvo.com"]
  s.homepage    = "http://goinvo.com"
  s.summary     = ""
  s.description = ""

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "sprockets"
  s.add_dependency "railties"
  
end
