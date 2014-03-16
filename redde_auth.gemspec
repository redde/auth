$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redde_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redde_auth"
  s.version     = ReddeAuth::VERSION
  s.authors     = ["Oleg Bovykin"]
  s.email       = ["oleg.bovykin@gmail.com"]
  s.homepage    = "https://github.com/redde/auth"
  s.summary     = "Authentication helper for all apps"
  s.description = "Login/password + oauth solution"

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.license       = "MIT"

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency "devise"
  s.add_dependency "omniauth-facebook"
  s.add_dependency "omniauth-vkontakte"
  s.add_dependency "omniauth-twitter"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "sqlite3"
end
