# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moex_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'moex_api'
  spec.version       = MoexApi::VERSION
  spec.authors       = ['kortirso']
  spec.email         = ['kortirso@gmail.com']

  spec.summary       = 'Ruby wrapper for MOEX API'
  spec.homepage      = 'https://github.com/kortirso/moex_api'
  spec.license       = 'MIT'

  spec.required_ruby_version = '~> 2.7'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri']   = 'https://github.com/kortirso/moex_api/blob/master/CHANGELOG.md'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '~> 1.3'
  spec.add_development_dependency 'rubocop-performance', '~> 1.8'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
