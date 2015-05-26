ForecastIO.configure do |configuration|
  configuration.api_key = Figaro.env.forecast_io_key
end