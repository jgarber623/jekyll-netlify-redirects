lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jekyll/netlify/redirects/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = ['>= 2.4', '< 2.7']

  spec.name          = 'jekyll-netlify-redirects'
  spec.version       = Jekyll::Netlify::Redirects::VERSION
  spec.authors       = ['Jason Garber']
  spec.email         = ['jason@sixtwothree.org']

  spec.summary       = 'Generate a Netlify redirects configuration from a Jekyll configuration.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/jgarber623/jekyll-netlify-redirects'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(bin|spec)/}) }

  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rubocop', '~> 0.69.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.1'

  spec.add_runtime_dependency 'jekyll', '~> 3.8'
end
