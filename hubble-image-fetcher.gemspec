# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hubble-image-fetcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'hubble-image-fetcher'
  spec.version       = HubbleImageFetcher::VERSION
  spec.authors       = ['Jakukyo Friel']
  spec.email         = ['weakish@gmail.com']
  spec.summary       = %q{A script to help downloading Hubble images.}
  spec.description   = %q{Given a list of image page urls of Hubble website,outputs a list of download urls for original images.}
  spec.homepage      = 'https://github.com/weakish/hubble-image-fetcher'
  spec.license       = 'MIT'
  spec.metadata      = {
                      'repository' => 'https://github.com/weakish/hubble-image-fetcher',
                      'documentation' => 'http://www.rubydoc.info/gems/hubble-image-fetcher/',
                      'issues' => 'https://github.com/weakish/hubble-image-fetcher/issues/',
                      'wiki' => 'https://github.com/weakish/hubble-image-fetcher/wiki/',
                     }

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.bindir        = 'bin'

  spec.add_runtime_dependency 'nokogiri', '~> 1.6'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'yard-doctest', '~> 0.1'
end
