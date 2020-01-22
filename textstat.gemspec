# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textstat/version'

Gem::Specification.new do |spec|
  spec.name          = 'textstat'
  spec.version       = TextStat::VERSION
  spec.authors       = ['Jakub Polak']
  spec.email         = ['jakub.polak.vz@gmail.com']

  spec.summary       = 'Ruby gem to calculate readability statistics of a text object - paragraphs, sentences, articles'
  spec.homepage      = 'https://github.com/kupolak/textstat'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/kupolak/textstat'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb', 'lib/dictionaries/*.txt']
  spec.test_files    = ['spec/textstat_spec.rb', 'lib/dictionaries/en_us.txt']

  spec.add_runtime_dependency     'text-hyphen', '~> 1.4', '>= 1.4.1'
  spec.add_development_dependency 'bundler', '~> 2.0.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.79'
  spec.add_development_dependency 'rubocop-performance', '~> 1.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.0'
end
