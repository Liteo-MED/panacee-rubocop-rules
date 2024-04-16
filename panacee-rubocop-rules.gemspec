require_relative 'lib/panacee/rubocop/rules/version'

Gem::Specification.new do |spec|
  spec.name          = 'panacee-rubocop-rules'
  spec.version       = Panacee::Rubocop::Rules::VERSION
  spec.authors       = ['Panacee back']
  spec.email         = ['tech@panacee.ai']

  spec.summary       = 'Shared Rubocop configuration accross Panacee Rails projects.'
  spec.homepage      = 'https://github.com/Liteo-Med/panacee-rubocop-rules'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['allowed_push_host'] = 'https://github.com'

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '>= 1.63.0'
  spec.add_dependency 'rubocop-performance', '>= 1.21.0'
  spec.add_dependency 'rubocop-rails', '>= 2.24.0'
  spec.add_dependency 'rubocop-rake', '>= 0.6.0'
  spec.add_dependency 'rubocop-rspec', '>= 2.8.0'
end
