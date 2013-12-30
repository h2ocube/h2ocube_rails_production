# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'h2ocube_rails_production'
  spec.version       = '0.1.0'
  spec.authors       = ['Ben']
  spec.email         = ['ben@zfben.com']
  spec.description   = %q{Just a collection for production gems}
  spec.summary       = %q{Just a collection for production gems}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'exception_notification', '~> 4.0'
  spec.add_dependency 'whenever'
  spec.add_dependency 'god'
  spec.add_dependency 'h2ocube_rails_cache'
end
