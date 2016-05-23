require_relative 'lib/configuration'

Gem::Specification.new do |spec|
  spec.name = Configuration::NAME
  spec.version = Configuration::VERSION
  spec.date = Configuration::DATE
  spec.summary = Configuration::SUMMARY
  spec.description = Configuration::DESCRIPTION
  spec.authors = ['Marco Imperia']
  spec.email = 'marco.imperia@gmail.com'
  spec.files = Dir['{bin,lib}/**/*', 'README*', 'LICENSE*', 'CHANGELOG*']
  spec.executables = Configuration::CLI
  spec.homepage = ''
  spec.add_runtime_dependency 'highline', '~> 1.7', '>= 1.7.8'
  spec.add_runtime_dependency 'trollop', '~> 2.1', '>= 2.1.2'
  spec.add_runtime_dependency 'logger-colors', '~> 1.0'
end
