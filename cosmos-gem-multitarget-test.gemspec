# encoding: ascii-8bit

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rbconfig'
require 'version'

# Create the overall gemspec
spec = Gem::Specification.new do |s|
  s.name = 'cosmos-gem-multitarget-test'
  s.summary = 'Test COSMOS Gem based multiple target'
  s.description =  <<-EOF

  The cosmos-gem-multitarget-test is a COSMOS Gem that contains multiple targets.

  EOF
  s.authors = ["Gary Crum"]
  s.email = ["gary.a.crum@nasa.gov"]
  s.homepage = 'https://github.com/crumgary/cosmos-gem-multitarget-test'

  s.platform = Gem::Platform::RUBY
  if ENV['VERSION']
    s.version = ENV['VERSION'].dup
  else
      s.version       = Version::VERSION
  end
  s.license = 'LGPL-3.0'

  # Modify as needed
  s.files = Dir['lib/*'] + Dir['TEST_TARGET1/*'] +  Dir['TEST_TARGET2/*']  + Dir['TEST_TARGET3/*']

  s.has_rdoc = true

  s.required_ruby_version = '~> 2'

  # Runtime Dependencies
  #s.add_runtime_dependency 'cosmos', '~> 4', '>= 4.4.0'
end
