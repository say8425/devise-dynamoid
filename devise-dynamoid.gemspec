# frozen_string_literal: true

require_relative 'lib/devise/dynamoid/version'

Gem::Specification.new do |spec|
  spec.name          = 'devise-dynamoid'
  spec.version       = Devise::Dynamoid::VERSION
  spec.authors       = ['Penguin']
  spec.email         = ['say8425@gmail.com']

  spec.summary       = 'Dynamoid ORM for Devise'
  spec.description   = 'Support Dynamoid ORM and generators for Devise'
  spec.homepage      = 'https://github.com/say8425/devise-dynamoid'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/say8425/devise-dynamoid'
  spec.metadata['changelog_uri'] = 'https://github.com/say8425/devise-dynamoid/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'devise', '>= 4'
  spec.add_dependency 'orm_adapter-dynamoid', '~> 0.0.2'
  spec.add_development_dependency 'rubocop', '~> 0.87.1'
  spec.add_development_dependency 'rubocop-performance', '~> 1.7.0'
end
