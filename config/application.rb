require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Transcloud
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    I18n.available_locales = [:en, :ja]
    I18n.enforce_available_locales = true
    I18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.encoding = "utf-8"
    config.action_view.field_error_proc = Proc.new do |html_tag, instance| 
      html_tag
      #if instance.error_message.kind_of?(Array)
      #  %(<span class='field_with_errors'>#{html_tag}</span><span class="validation-error">&nbsp; #{instance.error_message.join(',')}</span>).html_safe
      #else
      #  %(<span class='field_with_errors'>#{html_tag}</span><span class="validation-error">&nbsp;#{instance.error_message}</span>).html_safe  
      #end
    end
  end
end
