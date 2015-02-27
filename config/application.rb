require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EspacoStartup
  class Application < Rails::Application
Slim::Engine.set_default_options format: :html5
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'
    I18n.enforce_available_locales = false
    config.active_record.default_timezone = :local
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.assets            false
      g.helper            false
      g.test_framework    nil
      g.template_engine   :slim
    end
  end
end
