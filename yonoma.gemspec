# frozen_string_literal: true

require_relative "lib/yonoma/version"

Gem::Specification.new do |spec|
  spec.name = "yonoma"
  spec.version = Yonoma::VERSION
  spec.authors = ["YonomaHQ"]
  spec.email = ["tools@yonoma.io"]

  spec.summary = "The official Ruby client library for the Yonoma Email Marketing API."
  spec.homepage = "https://yonoma.io/"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/YonomaHQ/yonoma-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/YonomaHQ/yonoma-ruby/releases"
  spec.license = "MIT"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.files = Dir["lib/**/*", "README.md", "Rakefile", "yonoma.gemspec"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_dependency "httparty", "~> 0.21"
  spec.add_dependency "json", "~> 2.6"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
