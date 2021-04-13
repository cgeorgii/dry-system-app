require 'bundler/setup'
require 'dry/system/container'
require 'dry/system/components'

module Core
  class System < Dry::System::Container
    use :env, inferrer: -> { ENV.fetch('APP_ENV', 'development').to_sym }

    configure do |config|
      config.auto_register = ['lib']
    end

    load_paths! 'lib', 'system'
  end

  Import = System.injector
end
