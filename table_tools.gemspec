lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "table_tools/version"

Gem::Specification.new do |spec|
  spec.name          = "table_tools"
  spec.version       = TableTools::VERSION
  spec.authors       = ["sonota88"]
  spec.email         = ["yosiot8753@gmail.com"]

  spec.summary       = %q{My swiss army knife for table-like data.}
  spec.description   = %q{My swiss army knife for table-like data.}
  spec.homepage      = "https://github.com/sonota88/table_tools"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sonota88/table_tools"
  spec.metadata["changelog_uri"] = "https://github.com/sonota88/table_tools"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "standard", "1.0.5"

  spec.add_runtime_dependency "mrtable", "0.0.4"
  spec.add_runtime_dependency "roo", "2.8.2"
end
