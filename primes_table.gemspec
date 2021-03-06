lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes_table/version'

Gem::Specification.new do |spec|
  spec.name          = 'primes_table'
  spec.license       = 'Apache-2.0'
  spec.version       = PrimesTable::VERSION
  spec.authors       = ['Nicolas Sebastian Vidal']
  spec.email         = ['nicolas.s.vidal@gmail.com']
  spec.summary       = 'Prints out a multiplication table of the first N prime numbers.'
  spec.description   = 'Command line tool for printing out a multiplication table of the first N prime numbers.'
  spec.homepage      = 'https://github.com/nisevi/primes_table'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_development_dependency 'aruba', '~> 0.14.3'
  spec.add_development_dependency 'bundler', '~> 1.16', '>= 1.16.1'
  spec.add_development_dependency 'byebug', '~> 10.0'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rdoc', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'methadone', '>= 1.9.5', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
end
