
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dep_collector/version"

Gem::Specification.new do |spec|
  spec.name          = "dep_collector"
  spec.version       = DepCollector::VERSION
  spec.authors       = ["RaafatSobby"]
  spec.email         = ["raafat.sobhy5@gmail.com"]
  spec.metadata      = { "source_code_uri" => "https://github.com/RaafatSobhy/dep_collector" }
  spec.summary       = %q{Ruby Gem To collect the project dependencies and operating system information.}
  spec.homepage      = "https://github.com/RaafatSobhy/dep_collector"
  spec.license       = "MIT"
  spec.email         = 'raafat.sobhy5@gmail.com'
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
