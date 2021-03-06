# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/ban_extension/version'

Gem::Specification.new do |spec|
  spec.name          = 'rack-ban_extension'
  spec.version       = Rack::BanExtension::VERSION
  spec.authors       = ['neilang']
  spec.email         = ['neilang@gmail.com']

  spec.summary       = 'Rack middleware to reject requests containing specific extensions.'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)

  spec.metadata['allowed_push_host'] = 'TODO: Set to \'http://mygemserver.com\''

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rack-test', '~> 0.6'
  spec.add_development_dependency 'minitest', '~> 5.9'
end
