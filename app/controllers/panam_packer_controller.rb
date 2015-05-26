class PanamPackerController < ApplicationController

	def index
		base_items = [ "Cash", "Ticket", "Camera", "Re-usable water bottle", "Snacks" ]
		rain       = ["Umbrella", "Rain Jacket"]
		clear_day  = ["Sunscreen", "Hat", "Sunglasses"]
		cool       = ["Jacket or Sweater"]
		
		# Lat Long for Toronto
		lat_long  = [43.6509802, -79.3916043]
		forecast = get_forecast lat_long

		@summary = forecast[:currently][:summary]
		@temp    = forecast[:currently][:temperature]

	end

	private

	# Sends a Net::HTTP request to the Forecast.io API
	# 
	# @param lat_long [Array] Latitude and Longitude 
	# @param units [String] Units of measurement, defaults to SI
	# @return [Hashie::Mash] A hash of information from Forecast.io
	def get_forecast lat_long, units = "si"
		ForecastIO.forecast(lat_long[0], lat_long[1], params: { units: units} )
	end

end
