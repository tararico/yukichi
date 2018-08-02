
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yukichi/version"

Gem::Specification.new do |spec|
  spec.name          = "yukichi"
  spec.version       = Yukichi::VERSION
  spec.authors       = ["tararico"]
  spec.email         = ["emipu.uq@gmail.com"]

  spec.summary       = %q{We divide numbers by commas every three digits.}
  spec.description   = %q{Yukichi is a Gem of money. Now I can only separate them with commas every 3 digits, but I will add a function to add a yen mark.}
  spec.homepage      = "https://github.com/tararico"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "convert_numeral"
end
