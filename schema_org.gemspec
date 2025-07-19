# frozen_string_literal: true

require_relative 'lib/schema_org/version'

Gem::Specification.new do |spec|
  spec.name = 'schema_org'
  spec.version = SchemaOrg::VERSION
  spec.authors = ['Alexey Gordienko']
  spec.email = ['alx@anadyr.org']

  spec.summary = 'Ruby library for generating Schema.org structured data in JSON-LD format'
  spec.description = 'Schema.org provides a simple way to generate and manipulate structured data following Schema.org
                      specifications for JSON-LD output'
  spec.homepage = 'https://github.com/gordienko/schema_org'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/gordienko/schema_org'
  spec.metadata['changelog_uri'] = 'https://github.com/gordienko/schema_org/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.glob(%w[lib/**/*.rb LICENSE.txt README.md CHANGELOG.md])

  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
  #   end
  # end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
