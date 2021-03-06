# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "Decidim Diputació Girona"

  config.mailer_sender = "info_decidim@ddgi.cat"

  # Change these lines to set your preferred locales
  config.default_locale = :ca
  config.available_locales = [:en, :ca, :es, :eu, :fi, :fr, :gl, :it, :nl, :pt, :ru, :sv, :uk]

  config.enable_html_header_snippets = true
  config.track_newsletter_links = true

  # Geocoder configuration
  config.geocoder = {
    static_map_url: "https://image.maps.cit.api.here.com/mia/1.6/mapview",
    here_app_id: Rails.application.secrets.geocoder[:here_app_id],
    here_app_code: Rails.application.secrets.geocoder[:here_app_code]
  }

end

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale
