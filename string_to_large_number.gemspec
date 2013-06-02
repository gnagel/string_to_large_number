# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "string_to_large_number"

Gem::Specification.new do |gem|
  gem.name          = "string_to_large_number"
  gem.version       = '1.3'
  gem.authors       = ["Glenn Nagel"]
  gem.email         = ["glenn@mercury-wireless.com"]
  gem.homepage      = "https://github.com/gnagel/string_to_large_number"
  gem.summary       = %q{Convert common finance abbreviations to normal numbers ('mil', 'bil', 'tri', etc)}
  gem.description   = %q{Handy conversions for finance numbers to floats}
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib", "tasks"]

  gem.add_development_dependency('rspec')
  gem.add_development_dependency('rspec-expectations')
end
