require_relative 'lib/prevent_go/version'

Gem::Specification.new do |spec|
  spec.name          = "prevent_go"
  spec.version       = PreventGo::VERSION
  spec.authors       = ["Quentin Degraeve"]
  spec.email         = ["quentin@capsens.com"]

  spec.summary       = %q{PreventGo sdk}
  spec.description   = %q{PreventGo sdk}
  spec.homepage      = "https://github.com/CapSens/prevent_go.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://github.com/CapSens/prevent_go.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency('multipart-post', '>= 2.1.1')
  spec.add_dependency('mime-types', '>= 3.0')

  spec.add_development_dependency('rake', '>= 10.1.0')
  spec.add_development_dependency('rspec', '>= 3.0.0')
  spec.add_development_dependency('vcr')
  spec.add_development_dependency('webmock')
end