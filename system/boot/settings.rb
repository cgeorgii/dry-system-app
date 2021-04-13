require 'dry/system/components'

Core::System.boot :settings, from: :system do
  settings do
    key :app_env, Dry::Types['strict.string'].constrained(filled: true)
  end
end
