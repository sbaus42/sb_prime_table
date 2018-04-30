
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sb_prime_table/version"

Gem::Specification.new do |spec|
  spec.name          = "sb_prime_table"
  spec.version       = SbPrimeTable::VERSION
  spec.authors       = ["Santiago Baus"]
  spec.email         = ["sbaus87@gmail.com"]

  spec.summary       = %q{Output a multiplication table for a requested number of prime numbers}
  spec.description   = %q{Code Challenge: Create a program that returns a custom size n prime numbers multiplication table.}
  spec.homepage      = "https://github.com/sbaus42/sb_prime_table"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
