require './lib/active_record/connection_adapters/postgis_adapter/version.rb'

::Gem::Specification.new do |spec|
  spec.name = 'activerecord-postgis-adapter'
  spec.summary = 'ActiveRecord adapter for PostGIS, based on RGeo.'
  spec.description = "ActiveRecord connection adapter for PostGIS. It is based on the stock PostgreSQL adapter, but provides built-in support for the spatial extensions provided by PostGIS. It uses the RGeo library to represent spatial data in Ruby."
  spec.version = ActiveRecord::ConnectionAdapters::PostGISAdapter::VERSION
  spec.author = 'Daniel Azuma, Tee Parham'
  spec.email = 'dazuma@gmail.com, parhameter@gmail.com'
  spec.homepage = "http://github.com/rgeo/activerecord-postgis-adapter"
  spec.licenses = ['BSD']

  spec.files = Dir['lib/**/*', 'test/**/*', 'LICENSE.txt']
  spec.test_files = Dir['test/**/*']
  spec.platform = ::Gem::Platform::RUBY

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'activerecord', ['>= 4.0.0', '<= 4.2.0']
  spec.add_dependency 'rgeo-activerecord', '~> 1.2'

  spec.add_development_dependency 'rake', '~> 10.2'
  spec.add_development_dependency 'mocha', '~> 1.0'
  spec.add_development_dependency 'appraisal', '~> 1.0'
end
