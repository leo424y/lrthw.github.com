# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'NAME/version'
Gem::Specification.new do |s|
  s.name        = 'NAME'
  s.version     = NAME::VERSION
  s.authors     = ['Rob Sobers']
  s.email       = ['rsobers@gmail.com']
  s.homepage    = ''
  s.summary     = 'TODO: Write a gem summary'
  s.description = 'TODO: Write a gem description'
  s.rubyforge_project = 'NAME'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
end
