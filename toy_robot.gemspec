# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'lib/toy_robot/version'

Gem::Specification.new do |spec|
  spec.name          = 'toy_robot'
  spec.version       = ToyRobot::VERSION
  spec.authors       = ['Joao Leopoldino']
  spec.email         = ['leopogu@hotmail.com']

  spec.summary       = 'Resolving Toy Robot Simulator Challenge'
  spec.description   = 'This challenge was resolved by inspiration of Ricardo Valeriano solution and many others devs'
  spec.homepage      = 'https://github.com/JoaoLeopoldino'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/JoaoLeopoldino/toy_robot'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
