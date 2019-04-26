require_relative 'lib/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'sequent'
  s.version     = Sequent::VERSION
  s.summary     = "Event sourcing framework for Ruby"
  s.description = "Sequent is a CQRS and event sourcing framework for Ruby."
  s.authors     = ["Lars Vonk", "Bob Forma", "Erik Rozendaal", "Mike van Diepen", "Stephan van Diepen"]
  s.email       = [
    "lars.vonk@gmail.com",
    "bforma@zilverline.com",
    "erozendaal@zilverline.com",
    "mvdiepen@zilverline.com",
    "svdiepen@zilverline.com"
  ]
  s.files       = Dir["lib/**/*", "db/**/*"]
  s.executables << 'sequent'
  s.homepage    =
    'https://github.com/zilverline/sequent'
  s.license       = 'MIT'

  active_star_version = ENV['ACTIVE_STAR_VERSION'] || ['>= 5.0', '< 5.3']

  s.add_dependency              'activerecord', active_star_version
  s.add_dependency              'activemodel', active_star_version
  s.add_dependency              'pg', '>= 0.19'
  s.add_dependency              'postgresql_cursor', '~> 0.6'
  s.add_dependency              'oj', '>= 3.3.9'
  s.add_dependency              'thread_safe', '~> 0.3.5'
  s.add_dependency              'parallel', '>= 1.11.1'
  s.add_dependency              'bcrypt', '~> 3.1'
  s.add_dependency              'parser', '~> 2.5'
  s.add_development_dependency  'rspec', '~> 3.2'
  s.add_development_dependency  'timecop', '~> 0.9'
  s.add_development_dependency  'rspec-mocks', '~> 3.2'
  s.add_development_dependency  'rspec-collection_matchers', '~> 1.1'
  s.add_development_dependency  'rake', '~> 10.4'
  s.add_development_dependency  'pry', '~> 0.10'
  s.add_development_dependency  'simplecov', '~> 0.14.1'
end
