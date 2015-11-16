%w(lograge newrelic_rpm syslogger).each{ |gem| require gem }

module H2ocubeRailsProduction
  class Railtie < Rails::Railtie
    config.before_configuration do |app|
      app.config.log_level = :info
      app.config.logger = Syslogger.new(Rails.env.to_s, Syslog::LOG_PID, Syslog::LOG_LOCAL7)
      app.config.lograge.enabled = true
      app.config.lograge.formatter = Lograge::Formatters::Json.new
      app.config.lograge.custom_options = lambda do |event|
        event.payload[:custom_options] || {}
      end
    end
  end
end
