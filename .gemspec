# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

SUMMARY = 'kramdown is a fast, pure-Ruby Markdown-superset converter.'
DESCRIPTION = <<EOF
kramdown is yet-another-markdown-parser but fast, pure Ruby,
using a strict syntax definition and supporting several common extensions.
EOF

PKG_FILES = Dir.glob([
    'Rakefile',
    'setup.rb',
    'COPYING', 'README.md', 'AUTHORS',
    'VERSION', 'CONTRIBUTERS',
    'bin/*',
    'benchmark/*',
    'lib/**/*.rb',
    'man/man1/kramdown.1',
    'data/**/*',
    'doc/**',
    'test/**/*'
  ])

Gem::Specification.new do |s|
  #### Basic information
  s.name = 'kramdown'
  s.version = Kramdown::VERSION
  s.summary = SUMMARY
  s.description = DESCRIPTION
  s.license = 'MIT'

  #### Dependencies, requirements and files
  s.files = PKG_FILES.to_a

  s.require_path = 'lib'
  s.executables = ['kramdown']
  s.default_executable = 'kramdown'
  s.add_development_dependency 'minitest', '~> 5.0'
  s.add_development_dependency 'coderay', '~> 1.0.0'
  s.add_development_dependency 'stringex', '~> 1.5.1'

  #### Documentation

  s.has_rdoc = true
  s.rdoc_options = ['--main', 'lib/kramdown/document.rb']

  #### Author and project details

  s.author = 'Thomas Leitner'
  s.email = 't_leitner@gmx.at'
  s.homepage = "http://kramdown.gettalong.org"
  s.rubyforge_project = 'kramdown'
end
