# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pacifier/version'

Gem::Specification.new do |gem|
  gem.name          = "pacifier"
  gem.version       = Pacifier::VERSION
  gem.authors       = ["Zamith"]
  gem.email         = ["luis@zamith.pt"]
  gem.description   = %q{Catching all the errors}
  gem.summary       = %q{Pacifier catches all errors and informs you without blowing up in the face of the user}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
