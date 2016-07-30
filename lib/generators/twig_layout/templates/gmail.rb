Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              ENV['SMTP_SERVER'],
    port:                 ENV['SMTP_PORT'],
    domain:               ENV['GMAIL_DOMAIN'],
    user_name:            ENV['GMAIL_USERNAME'],
    password:             ENV['GMAIL_PASSWORD'],
    tls:                  true,
    ssl:                  true,
    authentication:       'plain',
    enable_starttls_auto: true  }

  if Rails.env.production?
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default_url_options = { host: ENV['WEB_ADDRESS'] }
  else
    config.action_mailer.default_url_options = { host: 'localhost:3000' }
  end
end

if Rails.env.production?
  Rails.application.routes.default_url_options[:host] = ENV['WEB_ADDRESS']
end

