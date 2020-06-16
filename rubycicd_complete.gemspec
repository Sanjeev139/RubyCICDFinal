Gem::Specification.new do |s|
  s.name        = 'rubycicd_uat'
  s.version     = '3.0.0'
  s.summary     = "Ruby CI/CD Services Wrapper"
  s.description = "A wrapper to facilitate making RUBY CI/CD RIS calls"
  s.email       = 'ruby@sanjeev.com'
  s.authors     = ["SanjeevITT"]
  s.files       = Dir.glob("lib/**/*")
  s.homepage    = 'http://rubygems.org/gems/rubycicd_uat'
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 1.3.5'

  s.required_ruby_version = '>= 2.3'

  s.add_dependency 'rest-client', '>= 1.8.0', '< 3.0.0'

  s.add_development_dependency 'rspec', '~> 0'
end
