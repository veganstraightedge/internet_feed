# frozen_string_literal: true

require_relative 'lib/internet_feed/version'

Gem::Specification.new do |spec|
  spec.name    = 'internet_feed'
  spec.version = InternetFeed::VERSION
  spec.authors = ['Shane Becker']
  spec.email   = ['veganstraightedge@gmail.com']

  spec.summary               = 'A small library to work with feeds from the internet: RSS, Atom, JSON Feed, et al'
  spec.description           = 'A small library to work with feeds from the internet: RSS, Atom, JSON Feed, et al'
  spec.homepage              = 'https://github.com/veganstraightedge/internet_feed'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 3.3.0'

  spec.metadata['allowed_push_host']     = 'https://rubygems.org'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/veganstraightedge/internet_feed'
  spec.metadata['changelog_uri']   = 'https://github.com/veganstraightedge/internet_feed/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'
end
