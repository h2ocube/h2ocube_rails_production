# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'h2ocube_rails_production'
  spec.version       = '0.2.0'
  spec.authors       = ['Ben']
  spec.email         = ['ben@zfben.com']
  spec.description   = 'Just a collection for production gems'
  spec.summary       = 'Just a collection for production gems'
  spec.homepage      = 'https://github.com/h2ocube/h2ocube_rails_production'
  spec.license       = 'MIT'
  spec.required_ruby_version = '~> 2.2'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'lograge'
  spec.add_dependency 'newrelic_rpm'
  spec.add_dependency 'syslogger'
end
