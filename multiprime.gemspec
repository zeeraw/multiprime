lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "multiprime"

Gem::Specification.new do |s|

  s.name = "multiprime"
  s.version = Multiprime::VERSION
  s.licenses = ["MIT"]
  s.authors = ["Philip Vieira"]
  s.summary = "Calculates multiplication tables of prime numbers"
  s.files = `git ls-files -z`.split("\x0")
  s.executables = ["multiprime"]

  s.add_development_dependency("rspec")
end