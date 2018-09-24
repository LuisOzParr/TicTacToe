# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tic_tac_toe_oz/version"

Gem::Specification.new do |spec|
  spec.name          = "tic_tac_toe_oz"
  spec.version       = TicTacToe::VERSION
  spec.authors       = ["Luis Ozuna"]
  spec.email         = ["lgozuna@gmail.com"]

  spec.summary       = %q{Game TicTacToe just logic}
  spec.description   = %q{Logic of game TicTacToe}
  spec.homepage      = 'https://github.com/LuisOzParr/TicTacToe'
  spec.license       = "MIT"

  spec.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
