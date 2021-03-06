# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_comments/version'

Gem::Specification.new do |gem|
  gem.name          = "the_comments_ruby"
  gem.version       = TheComments::VERSION
  gem.authors       = ["Khac Luan"]
  gem.email         = ["dangluan20@gmail.com"]
  gem.description   = %q{ Comments with threading for Rails 4 }
  gem.summary       = %q{ the_comments by the-teacher }
  gem.homepage      = "https://github.com/khacluan/the_comments"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'state_machine',     '~> 1.2.0'
  gem.add_dependency 'the_sortable_tree', '~> 2.5.0'
  gem.add_dependency 'the_simple_sort',   '~> 0.0.2'
end
